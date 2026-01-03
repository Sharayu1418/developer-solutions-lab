
# Costs and Prices – Semantic layer explanation

In the FinOps ADX schema, `Costs` and `Prices` are **KQL functions**, not physical
tables.

They represent the **stable semantic layer** consumed by dashboards, APIs,
and external clients.

---

## Why this is intentional
ADX schemas evolve. Raw ingestion tables change.
Functions provide a **contract** that protects consumers from schema churn.

Design principles:
- Raw tables - ingestion fidelity
- Functions - semantic stability

---

## What to expect
- `.show tables` lists only physical tables
- `Costs` / `Prices` appear under **Functions**
- SDKs resolve functions transparently

This is **expected behavior**.

---

## Common misconception
“If I don’t see `Costs` in `.show tables`, ingestion failed.”

This is incorrect.
Ingestion is validated via `_raw` tables.

---

## When this breaks
- Raw tables are empty
- Functions were deleted or altered
- Schema version mismatch

---

## Related validation
See:
- `verify-ingestion.kql`
- `common-queries.kql`

---

## Status
Validated