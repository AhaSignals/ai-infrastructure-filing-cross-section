# How Later SEC Comparatives Leak Into Historical Backtests: A CoreWeave Case Study

- Version: 1.0.0
- DOI: https://doi.org/10.5281/zenodo.22288550
- Publisher: AhaSignals
- Published: 2026-09-04
- License: CC BY 4.0
- Canonical research page: https://ahasignals.com/research/how-later-sec-comparatives-leak-into-historical-backtests/

## Research question

What changes in a historical 2025 query when a warehouse silently overwrites first-reported values with comparatives accepted in 2026?

## Result

The case study matches 14 CoreWeave facts by issuer, taxonomy, unit and exact period across two Form 10-Q accessions. A destructive latest-value query returns a later 2026 value for all 14 facts at a 2025 decision time. Ten differences are compatible with disclosed display precision, four are classified as presentation changes, one changes sign and none is labelled by the issuer as a restatement.

Five deterministic calculations show the downstream effect on reported revenue, other investing activities, gross margin, an operating-cash-flow-less-capex proxy and stock-based-compensation intensity. The sign example changes from positive $26.109 million to negative $6 million.

## Correct query contract

Filter source vintages by SEC acceptance time before calculating a feature. Keep each accession-level observation immutable, preserve missingness and distinguish rounding-compatible differences from presentation changes and issuer-identified restatements.

## Files

- `coreweave-later-sec-comparatives-leakage-case-study-2026-v1.json` — test design, findings, effects and upstream hash
- `coreweave-later-sec-comparatives-leakage-case-study-2026-v1.csv` — five derived effects in tabular form
- `coreweave-later-sec-comparatives-leakage-case-study-2026-v1.bib` — citation metadata
- `coreweave-later-comparatives-v1.sha256` — checksums for the case-study files
- `CITATION.cff` — repository citation metadata

## Limits

This is a source-vintage contamination study, not a portfolio-return backtest or a performance claim. It does not estimate alpha, information coefficient, return, Sharpe ratio or drawdown.

Company and ticker names identify the source filer only. AhaSignals is independent and is not affiliated with, endorsed by or sponsored by the issuer or the SEC. Research and education only; not investment, trading, legal, accounting or tax advice.
