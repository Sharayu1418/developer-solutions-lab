# FinOps ADX – Client validation

## Purpose
Executable client examples to **validate access to the FinOps ADX cluster**
and confirm that the `Costs` semantic layer is queryable across SDKs.

This is a **verification surface**, not a tutorial.

---

## What this solves
Clarifies that `Costs` (and `Prices`) are **KQL functions**, not physical tables,
and proves that ingestion and schema deployment are working from real clients.

---

## Design rationale
FinOps ADX exposes:
- `_raw` tables → ingestion layer
- KQL functions → stable semantic layer

All dashboards and consumers query **functions by design**.

---

## Included clients
Python, C#, TypeScript, JavaScript, and REST (C++-compatible).

Each client executes:
```kusto
Costs | take 5
```