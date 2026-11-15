# CPU Research Guide

Record processor facts without claiming that a processor makes a whole computer compatible.

## Fields to collect
- Manufacturer and exact model
- Product family and generation
- Architecture and instruction-set features (with source)
- Core and thread counts
- Integrated graphics model, if present
- Official product specification URL

## Research checklist
- Prefer the CPU manufacturer's product page or datasheet.
- Distinguish physical cores from logical processors.
- Do not infer a retail GPU name from a PCI device ID alone.
- Note when a specification varies by stepping or model suffix.
- Record the exact macOS point release and firmware context for test reports.

## Ventura-specific research lead

The current Dortania hardware-limitations guide states that macOS 13 and newer require AVX2 and that Ventura drops support for pre-Haswell CPUs. Its Sandy Bridge desktop page lists macOS 12 Monterey as the last supported OS for that generation. These are important community-project limitations, not Apple's official certification or a test of every Sandy Bridge processor.

For the documented Intel Pentium G630, Intel's second-generation desktop processor datasheet includes the model in the Pentium G600 series. Keep the Ventura assessment **Unknown** until exact-model evidence is independently established; do not turn family-level guide text into a whole-system verdict.

Sources:
- [Intel second-generation desktop processor datasheet](https://www.intel.com/content/dam/www/public/us/en/documents/datasheets/2nd-gen-core-desktop-vol-1-datasheet.pdf)
- [Dortania hardware limitations](https://dortania.github.io/OpenCore-Install-Guide/macos-limits)
- [Dortania Desktop Sandy Bridge guide](https://dortania.github.io/OpenCore-Install-Guide/config.plist/sandy-bridge.html)

**Compatibility conclusion:** leave unknown unless there is reliable, directly relevant evidence.
