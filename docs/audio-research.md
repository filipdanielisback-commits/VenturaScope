# Audio Research Guide

## Fields to collect
- Audio codec or controller model
- Hardware ID and codec revision
- Integrated or external device
- Codec layout ID, where relevant
- Driver/project version and macOS point release for any test
- Manufacturer documentation and project evidence

Avoid broad claims such as “all audio works” unless the exact device and test conditions are documented.

## AppleALC research lead

The current AppleALC supported-codec table (v1.9.8, edited 2026-09-30) lists codec revisions, layout IDs, and MinKernel/MaxKernel ranges. The table explicitly annotates MinKernel 13 as macOS 10.9, so MinKernel is a Darwin kernel version, not the macOS marketing version number 13 (Ventura).

When an exact codec is identified, match its codec ID and revision against the current table. Record the layout used and the exact Ventura point release tested. A codec appearing in the table is evidence about AppleALC's codec support, not a guarantee that every motherboard implementation, jack configuration, or complete system works.

Source:
- [AppleALC supported codecs](https://github.com/acidanthera/AppleALC/wiki/supported-codecs)
