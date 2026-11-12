# Compatibility research methodology

VenturaScope records research; it does not certify hardware or provide a way to add missing operating-system drivers.

## Evidence standard

Every compatibility statement should identify:

1. The exact device or silicon family, including vendor and model where possible.
2. The relevant macOS release and, where known, build or point release.
3. The hardware revision and any important configuration details.
4. What was actually tested and what worked or did not work.
5. A direct source URL and the date it was checked.

Prefer primary documentation, vendor documentation, and reproducible technical reports. A forum post can be useful evidence of a report, but should not be presented as universal proof.

## Status meanings

- **documented**: reliable source directly supports the narrowly stated claim.
- **reported**: a user or community report exists, but important details or independent confirmation are missing.
- **unknown**: evidence is insufficient.
- **not-supported**: a reliable source documents a limitation for that exact context.

Do not infer that every product using the same GPU brand or family behaves identically. Laptop GPUs, desktop cards, different silicon revisions, and different vendor implementations can differ.

## Responsible scope

- Do not claim that a script can make unsupported hardware compatible.
- Do not distribute proprietary operating-system files, firmware, or drivers.
- Do not provide instructions intended to bypass software licensing or platform restrictions.
- Keep the Windows inventory script read-only and avoid collecting serial numbers, usernames, network addresses, or file contents.
- Clearly label uncertain and community-submitted information.
