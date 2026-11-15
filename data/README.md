# Data Directory

This directory contains structured research records and source references.

## Component databases

- `cpus.json` — processor models and CPU-specific evidence.
- `gpus.json` — graphics adapters, PCI identifiers, and graphics evidence.
- `motherboards.json` — system and motherboard identifiers, revisions, and chipset evidence.
- `wifi.json` — Wi-Fi adapter models and hardware IDs.
- `audio.json` — audio codecs/controllers and codec-specific evidence.
- `test-systems.json` — voluntarily contributed whole-system hardware inventories; not compatibility certifications.

## Research support

- `sources.json` — source registry with source type, access date, and limitations.
- `compatibility-record-template.json` — reusable record example.
- `gpu-compatibility.json` — legacy GPU compatibility research entries.

## Data rules

- Keep records factual and cite evidence.
- Use the exact model, hardware ID, revision, operating-system version, and test context where available.
- Use `unknown` when information is unavailable; use `null` or an empty array rather than guessing.
- Use only the five status labels defined in [Compatibility Status Definitions](../docs/compatibility-status-definitions.md).
- A component-level record is not a whole-system verdict.
- Never include serial numbers, service tags, UUIDs, usernames, computer names, MAC/IP addresses, passwords, account details, or private file paths.
