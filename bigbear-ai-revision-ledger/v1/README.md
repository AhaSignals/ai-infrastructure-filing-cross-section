# BigBear.ai Accession-Level PIT Revision Ledger — 2025 Restatement

- Version: 1.0.0
- Publisher: AhaSignals
- Published: 2026-09-04
- License: CC BY 4.0
- Canonical research page: https://ahasignals.com/filing-delta/bigbear-ai/revisions/2025-restatement/

## Research question

Which primary-statement values were available, withdrawn from reliance and later restated at each SEC acceptance time?

## Scope

The ledger contains 160 non-zero, issuer-labelled error-correction adjustments from the primary-statement restatement tables in Notes 2 and 25 of BigBear.ai Holdings, Inc.'s 2024 Form 10-K. It spans eight period ends and three statement types.

Each record preserves the exact taxonomy concept, unit, period, previously reported value and accession, the issuer's March 18, 2025 non-reliance notice, and the restated value accepted on March 25, 2025. All 160 adjustments reconcile arithmetically. Company Facts independently matches 136 prior values and 152 restated values; unmatched cells remain directly evidenced by the restatement tables and carry their verification status.

## Point-in-time rule

1. Before the non-reliance notice, use the latest eligible value accepted by the SEC on or before the decision time.
2. From the non-reliance notice until the restated Form 10-K, quarantine the affected value. Do not retain the withdrawn value as reliable or backfill the not-yet-public restated value.
3. Use the restated value only from the restated Form 10-K acceptance time onward.

## Files

- `bbai-accession-level-pit-revision-ledger-2025-v1.json` — complete ledger and source chain
- `bbai-accession-level-pit-revision-ledger-2025-v1.csv` — one row per changed statement cell
- `bbai-accession-level-pit-revision-ledger-2025-v1.bib` — citation metadata
- `bbai-accession-level-pit-revision-ledger-2025-v1.sha256` — checksums for the ledger package
- `bbai-restatement-source-2025-03-25-v1.json` — normalized, source-dated extraction snapshot
- `issuer-restatement-ledger-schema.json` — JSON Schema
- `CITATION.cff` — repository citation metadata

## Limits

Completeness refers to the stated restatement-table boundary. It does not include every narrative disclosure or every tagged fact in the filing. SEC acceptance time establishes public availability, not investor processing time. This ledger tests data integrity; it does not estimate alpha, return or investment value.

Company and ticker names identify the source filer only. AhaSignals is independent and is not affiliated with, endorsed by or sponsored by the issuer or the SEC. Research and education only; not investment, trading, legal, accounting or tax advice.
