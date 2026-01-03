# FinOps ADX – KQL validation queries

## Purpose
This directory contains **authoritative KQL queries** to validate the FinOps
Azure Data Explorer (ADX) schema and confirm correct ingestion and function
resolution.

These queries are designed for:
- troubleshooting
- schema verification
- maintainer-level validation

---

## Files overview

| File | Purpose |
|-----|--------|
| verify-ingestion.kql | Confirms raw ingestion is present |
| common-queries.kql | Canonical queries used for validation |
| costs-and-prices.md | Explains the semantic layer design |

---

## Expected usage
Run these queries in:
- Azure Data Explorer Web UI
- Azure Portal
- Any ADX client / SDK

---

## Status
Validated against current FinOps ADX schema

---

If results differ from expectations, the issue is likely upstream
(ingestion, permissions, or schema deployment).