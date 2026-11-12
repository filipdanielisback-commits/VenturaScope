# VenturaScope

**An open-source Windows hardware inventory and macOS Ventura 13 compatibility research project.**

VenturaScope helps users collect a readable summary of their PC hardware and compare it with carefully sourced compatibility research.

> **Important:** VenturaScope is an information and research tool. It does not install macOS, modify boot settings, bypass platform restrictions, create drivers, or make unsupported hardware compatible. Compatibility depends on exact hardware, firmware, operating-system version, and available drivers. This project does not promise that any non-Apple PC can run macOS.

## Project goals

- Collect a local hardware inventory on Windows.
- Record exact CPU and GPU model names, memory, Windows version, and storage-device summaries.
- Maintain a transparent, evidence-based compatibility research database.
- Clearly distinguish confirmed information, reported results, unknowns, and unsupported configurations.
- Help contributors document sources and hardware revisions.

## Current status

**Early development.** VenturaScope includes a read-only Windows inventory report, research documentation, separate component databases, a searchable hardware database viewer, and automated checks for database record structure and evidence metadata.

- [Open the hardware database viewer source](hardware-database/index.html)
- [Open the live hardware database](https://filipdanielisback-commits.github.io/VenturaScope/hardware-database/) *(available after GitHub Pages is enabled and the deployment succeeds)*
- Browse the raw records in [`data/`](data/)

## Repository layout

```text
VenturaScope/
├── data/
│   └── gpu-compatibility.json
├── docs/
│   └── compatibility-methodology.md
├── scripts/
│   └── Get-VenturaScopeReport.ps1
├── CONTRIBUTING.md
└── README.md
```

## Quick start

1. Open **Windows PowerShell**.
2. From the repository folder, run:

   ```powershell
   .\\scripts\\Get-VenturaScopeReport.ps1
   ```
3. The script displays a hardware summary and writes a JSON report to your Desktop.

The script reads hardware information through Windows management interfaces. It does not change system settings. Review the report before sharing it; hardware details can still reveal information about your device.

## Compatibility labels

- **Documented** — supported by a cited, relevant source for the exact hardware and software context.
- **Reported** — a community report exists, but independent confirmation or exact configuration details may be missing.
- **Unknown** — not enough reliable evidence to make a claim.
- **Not supported** — a trustworthy source explicitly documents a limitation for the stated context.

An entry must include sources and notes. A GPU family name alone is not enough to establish support for every card in that family.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) and the [compatibility research methodology](docs/compatibility-methodology.md).

## Disclaimer

VenturaScope is an independent educational project and is not affiliated with or endorsed by Apple. macOS is Apple software; consult Apple's current terms and documentation for permitted use. Always back up important data before making changes to a computer.
