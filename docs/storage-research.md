# Storage Research Guide

Record storage facts without exposing personal files or drive identifiers.

## Fields to collect
- HDD, SATA SSD, NVMe SSD, or removable media
- Manufacturer and exact model, if known
- Capacity
- Interface and controller
- Firmware information only when relevant and safe to share
- Source URL and date
- macOS version and exact symptoms for any reported issue

Do not publish drive serial numbers, partition contents, recovery keys, or screenshots containing personal files.

## NVMe research lead

Acidanthera's NVMeFix project describes targeted patches for Apple's NVMe driver, including power-state management and workarounds for timeout panics on certain controllers such as VMware and Samsung PM981. Its README says it requires Lilu and at least macOS 10.14, and currently documents support up to macOS 26.

This does not establish universal NVMe compatibility, fix every SSD/controller issue, or apply to an unidentified SATA HDD. Record the exact SSD model, controller, firmware, motherboard/firmware context, and macOS version before drawing a conclusion.

Source:
- [Acidanthera NVMeFix](https://github.com/acidanthera/NVMeFix)
