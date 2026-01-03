# FinOps ADX – Costs & Prices visibility

## What problem this solves
When querying a FinOps Azure Data Explorer (ADX) cluster, `Costs` and `Prices`
do not appear in `.show tables`, leading users to believe ingestion failed.

## Why this happens (by design)
`Costs` and `Prices` are **KQL functions (logical views)**, not physical tables.
ADX only lists **physical tables** in `.show tables`.

The FinOps schema intentionally exposes:
- `_raw` tables → ingestion layer
- Functions → stable semantic layer

## Expected behavior
- `.show tables` lists `ActualCosts_raw`, reference tables, etc.
- `Costs` / `Prices` appear under **Functions**
- Dashboards query functions, not raw tables

## What this does NOT solve
- Missing ingestion (empty raw tables)
- Permission issues
- Broken dashboards

## When this breaks
- Raw tables are empty
- Functions were deleted or modified
- Schema version mismatch

## Related issue / context
FinOps Toolkit ADX schema discussions (2023–2025)

## Maintenance status
Validated against current FinOps ADX schema

## Verification
See `kql/verify-ingestion.kql`