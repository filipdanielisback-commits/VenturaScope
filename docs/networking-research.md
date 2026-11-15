# Networking Research Guide

Document network adapters as individual components.

## Fields to collect
- Ethernet or Wi-Fi
- Manufacturer and exact adapter model
- PCI or USB hardware ID
- Driver and operating-system version used for the observation
- Source URL and date
- Whether the information is manufacturer documentation or a user report

Do not publish Wi-Fi passwords, network names, MAC addresses, or other private network details.

## Intel Wi-Fi research lead

OpenIntelWireless maintains a compatibility list for Intel Wi-Fi adapter families and points to source files for exact PCI IDs. Its itlwm v2.2.0 release explicitly added macOS Ventura support; that release also notes Handoff is disabled on Ventura. The current v2.3.0 release notes Sonoma support, so do not treat the latest release label as proof of Ventura-specific testing.

For a useful record, capture the exact adapter model and PCI ID, the itlwm/AirportItlwm version, the exact macOS Ventura point release, and which features were tested. Project compatibility tables are research evidence, not proof for an unidentified adapter or complete system.

Sources:
- [OpenIntelWireless compatibility list](https://openintelwireless.github.io/itlwm/Compat.html)
- [OpenIntelWireless release notes](https://github.com/OpenIntelWireless/itlwm/releases)
