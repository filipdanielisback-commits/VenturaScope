#!/usr/bin/env python3
"""Validate VenturaScope component database structure and evidence metadata."""
import json
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
FILES = [
    ROOT / "data" / name
    for name in ("cpus.json", "gpus.json", "motherboards.json", "wifi.json", "audio.json")
]
STATUSES = {"documented", "reported", "independently_verified", "unknown", "not_applicable"}
errors = []

def error(path, message):
    errors.append(f"{path}: {message}")

for path in FILES:
    if not path.is_file():
        error(path.name, "required database file is missing")
        continue
    try:
        data = json.loads(path.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError) as exc:
        error(path.name, f"cannot read valid JSON ({exc})")
        continue

    if data.get("schema_version") != 1:
        error(path.name, "schema_version must be 1")
    records = data.get("records")
    if not isinstance(records, list):
        error(path.name, "records must be an array")
        continue

    seen_ids = set()
    for index, record in enumerate(records):
        where = f"{path.name}:records[{index}]"
        if not isinstance(record, dict):
            error(where, "record must be an object")
            continue

        record_id = record.get("id")
        if not isinstance(record_id, str) or not record_id.strip():
            error(where, "id must be a non-empty string")
        elif record_id in seen_ids:
            error(where, f"duplicate id {record_id!r}")
        else:
            seen_ids.add(record_id)

        if not any(isinstance(record.get(field), str) and record[field].strip()
                   for field in ("model", "system_model")):
            error(where, "provide a non-empty model or system_model")

        assessment = record.get("assessment")
        if not isinstance(assessment, dict):
            error(where, "assessment must be an object")
        else:
            if assessment.get("status") not in STATUSES:
                error(where, f"assessment.status must be one of {sorted(STATUSES)}")
            if not isinstance(assessment.get("claim"), str) or not assessment["claim"].strip():
                error(where, "assessment.claim must be a non-empty string")
            limitations = assessment.get("limitations", [])
            if not isinstance(limitations, list) or not all(isinstance(x, str) for x in limitations):
                error(where, "assessment.limitations must be an array of strings")

        sources = record.get("sources")
        if not isinstance(sources, list):
            error(where, "sources must be an array (use [] when none are known)")
        else:
            for source_index, source in enumerate(sources):
                source_where = f"{where}.sources[{source_index}]"
                if not isinstance(source, dict):
                    error(source_where, "source must be an object")
                    continue
                for field in ("title", "url", "type"):
                    if not isinstance(source.get(field), str) or not source[field].strip():
                        error(source_where, f"{field} must be a non-empty string")
                url = source.get("url", "")
                if isinstance(url, str) and url and not url.startswith("https://"):
                    error(source_where, "source URL must use HTTPS")

if errors:
    print("VenturaScope database validation failed:")
    for item in errors:
        print(f" - {item}")
    sys.exit(1)

print(f"VenturaScope database validation passed ({len(FILES)} component databases checked).")
