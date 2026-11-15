# GPU Research Guide

Graphics research should identify the exact adapter and the limits of available evidence.

## Fields to collect
- GPU manufacturer and exact model
- Integrated or discrete
- PCI vendor and device IDs, if available
- Subsystem ID and revision, if available
- Architecture or generation, with source
- Official specification or driver documentation

## Cautions
- A device ID is not always enough to establish a marketed product name.
- Similar names can refer to different GPU generations.
- A reported graphics result does not establish support for every feature or the whole computer.
- Mark unknowns honestly.

## Sandy Bridge graphics research lead

Intel's Windows graphics-driver list includes the Pentium G630 among processors using Intel HD Graphics. This confirms the Windows driver-family naming context, not macOS support.

Dortania's legacy Intel graphics guide lists High Sierra 10.13.6 as the highest supported OS for its Sandy Bridge 2XXX graphics section and names HD 2000, HD 3000, and HD P3000. The exact PCI ID recorded for the Lenovo system (`PCI\\VEN_8086&DEV_0102&SUBSYS_307C17AA&REV_09`) is not individually named in that list. Do not infer that it is an HD 2000 or HD 3000. Keep exact-device Ventura status **Unknown** unless a direct mapping and relevant test evidence are found.

Sources:
- [Intel graphics driver list](https://www.intel.com/content/www/us/en/support/articles/000090440/processors.html)
- [Dortania GPU Buyers Guide - Legacy Intel](https://dortania.github.io/GPU-Buyers-Guide/legacy-gpus/legacy-intel.html)
- [Dortania Desktop Sandy Bridge guide](https://dortania.github.io/OpenCore-Install-Guide/config.plist/sandy-bridge.html)
