# AI Infrastructure Filing Revision Event Corpus

- Version: 1.0.0
- Published: 2026-09-03
- Canonical page: https://ahasignals.com/research/ai-infrastructure-filing-revision-event-corpus/
- Data license: CC BY 4.0
- Payload SHA-256: cb3b01311df5769c014145b3d93f9cc5e0a78f2f85af5b1698c6347c55b62de0

## Scope

Version 1 contains 18 source-dated events across seven observed issuers. Fourteen events preserve matched CoreWeave values that differ between two SEC Form 10-Q accessions. Four events preserve Super Micro derived values whose evidence status or comparability changed between two frozen cross-section releases even though the values did not change.

The other five issuers were observed in the specified cross-section release comparison and had no event in that comparison. This does not mean they have never revised a filing value.

## Files

- `corpus.json` — complete event corpus, coverage and lineage.
- `events.csv` — one row per revision or source-upgrade event.
- `coverage.csv` — event and no-event coverage for all seven observed issuers.
- `schema.json` — JSON Schema for `corpus.json`.
- `checksums.sha256` — SHA-256 manifest for the frozen files.
- `citation.bib` and `CITATION.cff` — citation metadata.

## Point-in-time rule

At a decision time, use only the latest eligible state available on or before that time. Later states never replace an earlier frozen object. Missing or ineligible observations are never converted to zero.

## Boundary

The corpus tests data lineage and availability. It does not estimate alpha, information coefficient, portfolio return, Sharpe ratio or drawdown. Company names and symbols identify SEC filers only. AhaSignals is independent and is not affiliated with or endorsed by the issuers or the SEC. Research and education only; not investment, trading, legal, accounting or tax advice.
