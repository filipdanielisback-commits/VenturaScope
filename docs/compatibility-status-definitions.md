# Compatibility Status Definitions

Use only these five labels in compatibility records.

| Status | Meaning |
|---|---|
| Documented | A reliable primary source or authoritative technical/project document directly supports the narrowly stated claim for the specified context. |
| Reported | A contributor or community source reports an observation, but important details or independent confirmation are missing. |
| Independently verified | The same narrowly defined observation is supported by independent, reproducible evidence. |
| Unknown | Evidence is missing, conflicting, or too weak to support a conclusion. |
| Not applicable | The field does not apply to this component or record. |

## Rules

1. A documented limitation is still **Documented** when the source directly supports that limitation. Do not invent a separate "Not supported" status.
2. "Documented" does not mean Apple-certified, universally compatible, or independently tested.
3. Never infer full-system compatibility from a CPU or GPU name alone.
4. Record the exact model, revision, hardware identifier, operating-system version, and test conditions where available.
5. Include source URLs and access dates for research claims.
6. Keep unverified reports clearly attributed.
7. Do not turn an unknown value into a guess.
