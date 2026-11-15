# Compatibility research methodology

VenturaScope records research; it does not certify hardware or provide a way to add missing operating-system drivers.

## Evidence standard

Every compatibility statement should identify:

1. The exact device or silicon family, including vendor and model where possible.
2. The relevant macOS release and, where known, build or point release.
3. The hardware revision and any important configuration details.
4. What was actually tested and what worked or did not work.
5. A direct source URL and the date it was checked.

Prefer manufacturer documentation, official operating-system documentation, authoritative project documentation, and reproducible technical reports. A forum post can be useful evidence of a report, but should not be presented as universal proof.

## Status meanings

Use only these labels:

- **Documented** — a reliable primary source or authoritative technical/project document directly supports the narrowly stated claim for the specified context.
- **Reported** — a user or community report exists, but important details or independent confirmation are missing.
- **Independently verified** — the same narrowly defined observation is supported by independent, reproducible evidence.
- **Unknown** — evidence is insufficient, missing, or conflicting.
- **Not applicable** — the field does not apply.

A documented limitation should be recorded as **Documented** with the limitation stated precisely; do not create a separate "Not supported" status. Documented does not mean Apple-certified or universally compatible.

Do not infer that every product using the same GPU brand or family behaves identically. Laptop GPUs, desktop cards, different silicon revisions, and different vendor implementations can differ.

## Responsible scope

- Do not claim that a script can make unsupported hardware compatible.
- Do not distribute proprietary operating-system files, firmware, or drivers.
- Do not provide instructions intended to bypass software licensing or platform restrictions.
- Keep the Windows inventory script read-only and avoid collecting serial numbers, usernames, network addresses, or file contents.
- Clearly label uncertain and community-submitted information.
