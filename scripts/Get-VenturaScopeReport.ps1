# VenturaScope - read-only Windows hardware inventory
# Compatible with Windows PowerShell 5.1 and PowerShell 7.
# This script only reads hardware information and writes a JSON report.

$ErrorActionPreference = "Stop"

function Get-SafeValue {
    param([scriptblock]$Command, [string]$Property)
    try {
        $item = & $Command | Select-Object -First 1
        if ($null -ne $item) { return $item.$Property }
    } catch {
        return $null
    }
    return $null
}

$cpu = Get-CimInstance -ClassName Win32_Processor -ErrorAction SilentlyContinue |
    Select-Object -First 1
$computerSystem = Get-CimInstance -ClassName Win32_ComputerSystem -ErrorAction SilentlyContinue
$operatingSystem = Get-CimInstance -ClassName Win32_OperatingSystem -ErrorAction SilentlyContinue
$videoControllers = @(Get-CimInstance -ClassName Win32_VideoController -ErrorAction SilentlyContinue |
    ForEach-Object {
        [ordered]@{
            Name = $_.Name
            DriverVersion = $_.DriverVersion
            DriverDate = $_.DriverDate
            AdapterRAM_GB = if ($_.AdapterRAM) { [math]::Round($_.AdapterRAM / 1GB, 2) } else { $null }
        }
    })
$drives = @(Get-CimInstance -ClassName Win32_DiskDrive -ErrorAction SilentlyContinue |
    ForEach-Object {
        [ordered]@{
            Model = $_.Model
            InterfaceType = $_.InterfaceType
            Size_GB = if ($_.Size) { [math]::Round($_.Size / 1GB, 2) } else { $null }
        }
    })

$report = [ordered]@{
    Tool = "VenturaScope"
    ReportVersion = "0.1.0"
    GeneratedAtUtc = (Get-Date).ToUniversalTime().ToString("o")
    OperatingSystem = [ordered]@{
        Caption = $operatingSystem.Caption
        Version = $operatingSystem.Version
        BuildNumber = $operatingSystem.BuildNumber
        Architecture = $operatingSystem.OSArchitecture
    }
    Processor = [ordered]@{
        Name = $cpu.Name
        Manufacturer = $cpu.Manufacturer
        Cores = $cpu.NumberOfCores
        LogicalProcessors = $cpu.NumberOfLogicalProcessors
    }
    Memory = [ordered]@{
        Installed_GB = if ($computerSystem.TotalPhysicalMemory) {
            [math]::Round($computerSystem.TotalPhysicalMemory / 1GB, 2)
        } else { $null }
    }
    Graphics = $videoControllers
    Storage = $drives
    PrivacyNote = "Serial numbers, usernames, computer name, network addresses, and file contents are not collected."
}

$json = $report | ConvertTo-Json -Depth 6
$desktop = [Environment]::GetFolderPath("Desktop")
if ([string]::IsNullOrWhiteSpace($desktop)) { $desktop = (Get-Location).Path }
$timestamp = Get-Date -Format "yyyyMMdd-HHmmss"
$outputPath = Join-Path $desktop "VenturaScope-Report-$timestamp.json"
$json | Set-Content -Path $outputPath -Encoding UTF8

Write-Host ""
Write-Host "VenturaScope hardware report created:" -ForegroundColor Green
Write-Host $outputPath
Write-Host "Review the report before sharing it publicly."
