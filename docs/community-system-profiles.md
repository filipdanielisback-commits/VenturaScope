# Submitting a Community System Profile

VenturaScope accepts voluntary, sanitized hardware inventories to help document exact system configurations.

## How to submit

1. Open the [System Profile Submission issue form](../.github/ISSUE_TEMPLATE/system-profile.yml) in the repository's **Issues → New issue** page.
2. Enter only technical hardware details you are comfortable making public.
3. Use exact model names where known. Write `Unknown` rather than guessing.
4. Include public manufacturer specifications or other reliable sources when available.
5. Submit the form. A maintainer reviews it before any profile is added to `data/test-systems.json`.

## Never submit

- Serial numbers, service tags, UUIDs, or other unique device identifiers
- Windows product keys, passwords, recovery keys, or account credentials
- Usernames, computer names, email addresses, phone numbers, or home addresses
- MAC addresses, IP addresses, Wi-Fi credentials, or private network details
- Raw diagnostic exports or screenshots that may expose private information

A hardware model or PCI vendor/device ID may be useful; a unique device serial number is not.

## Evidence and compatibility claims

A profile describes the reported inventory. It does not prove that macOS Ventura works on the system. Compatibility stays `unknown` unless the evidence supports a more specific status for the exact hardware and software context. Component-level evidence must not be presented as a complete-system verdict.

Maintainers may ask for clarification, redact unnecessary details, correct formatting, or decline a submission that cannot be safely or reliably published. Do not submit information about someone else's computer without permission.

## Profile data format

Accepted profiles are reviewed and manually added to `data/test-systems.json`. Issue submissions are not automatically imported or treated as verified test results.
