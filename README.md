# VenturaScope

**An open-source Windows hardware inventory and macOS Ventura 13 compatibility research project.**

VenturaScope helps users collect a readable summary of their PC hardware and compare it with carefully sourced compatibility research.

> **Important:** VenturaScope is an information and research tool. It does not install macOS, modify boot settings, bypass platform restrictions, create drivers, or make unsupported hardware compatible. Compatibility depends on exact hardware, firmware, operating-system version, and available drivers. This project does not promise that any non-Apple PC can run macOS.

## Project goals

- Collect a local hardware inventory on Windows.
- Record exact CPU and GPU model names, memory, Windows version, and storage-device summaries.
- Maintain a transparent, evidence-based compatibility research database.
- Clearly distinguish documented evidence, community reports, independently verified observations, unknowns, and fields that do not apply.
- Help contributors document sources and hardware revisions.

## Current status

**Early development.** VenturaScope includes a read-only Windows inventory report, research documentation, separate component databases, a searchable hardware database viewer, community system profiles, and automated checks for database record structure and evidence metadata.

- [Open the hardware database viewer source](hardware-database/index.html)
- [Open the live hardware database](https://filipdanielisback-commits.github.io/VenturaScope/hardware-database/)
- [Browse community system profiles](https://filipdanielisback-commits.github.io/VenturaScope/system-profiles/)
- [How to submit a community system profile](docs/community-system-profiles.md)
- [Latest weekly research report](research/weekly/2026-11-15.md)
- Browse the raw records in [data/](data/)

## Repository layout

```text
VenturaScope/
├── data/
│   ├── cpus.json
│   ├── gpus.json
│   ├── motherboards.json
│   ├── wifi.json
│   ├── audio.json
   │   ├── storage.json
│   ├── test-systems.json
│   └── sources.json
├── docs/
│   ├── compatibility-methodology.md
│   ├── compatibility-status-definitions.md
│   └── ...
├── hardware-database/
├── system-profiles/
└── scripts/
    ├── Get-VenturaScopeReport.ps1
    └── Validate-VenturaScopeDatabase.py
```

## Quick start

1. Open **Windows PowerShell**.
2. From the repository folder, run:

   ```powershell
   .\scripts\Get-VenturaScopeReport.ps1
   ```
3. The script displays a hardware summary and writes a JSON report to your Desktop.

The script reads hardware information through Windows management interfaces. It does not change system settings. Review the report before sharing it; hardware details can still reveal information about your device.

## Compatibility labels

Use only the five labels defined in [Compatibility Status Definitions](docs/compatibility-status-definitions.md):

- **Documented** — a reliable primary source or authoritative technical/project document directly supports the narrowly stated claim for the specified context.
- **Reported** — a contributor or community source reports an observation, but important details or independent confirmation are missing.
- **Independently verified** — the same narrowly defined observation is supported by independent, reproducible evidence.
- **Unknown** — evidence is insufficient, missing, or conflicting.
- **Not applicable** — the field does not apply.

A documented limitation is still **Documented** when the source directly supports that limitation. Do not infer a whole-system result from one component record.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md), the [compatibility research methodology](docs/compatibility-methodology.md), and the [source quality standards](docs/source-quality.md).

## Disclaimer

VenturaScope is an independent educational project and is not affiliated with or endorsed by Apple. macOS is Apple software; consult Apple's current terms and documentation for permitted use. Always back up important data before making changes to a computer.
