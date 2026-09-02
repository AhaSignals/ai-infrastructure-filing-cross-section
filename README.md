# AI Infrastructure Filing Cross-Section: 2026 Q2 Evidence Note

- Version: 1.0.0
- DOI: https://doi.org/10.5281/zenodo.22239714
- Publisher: AhaSignals
- First published: 2026-09-01
- Public-information cutoff: 2026-09-01T00:00:00.000Z
- License: CC BY 4.0
- Canonical research note: https://ahasignals.com/research/ai-infrastructure-filing-cross-section-2026-q2/

## Research question

Within three role-matched AI-infrastructure issuer pairs, which differences remain after applying one frozen quarterly filing contract?

## Scope

This package compares six U.S.-listed AI-infrastructure issuers in three role-matched pairs:

- Compute accelerators: NVIDIA and AMD
- Networking and interconnect: Arista Networks and Marvell Technology
- Server systems: Super Micro Computer and Dell Technologies

The package contains 12 exact comparisons across quarterly revenue growth, gross margin, research-and-development intensity and diluted-share change. Each comparison preserves the fiscal period, period end, SEC acceptance timestamp, accession number, filing URL, comparability tier and evidence-object SHA-256.

## Descriptive findings

1. Arista and Marvell revenue growth differed by 1.14 percentage points, while gross margin, R&D intensity and diluted-share change differed by 9.79, 15.58 and 5.46 points.
2. Super Micro and Dell revenue growth differed by 5.62 percentage points and gross margin by 0.28 points, while diluted-share change differed by 19.41 points. The Super Micro diluted-share observation is Tier B.
3. NVIDIA and AMD differed by 55.74 percentage points in revenue growth, 21.20 in gross margin, 14.58 in R&D intensity and 2.79 in diluted-share change.

## Package contents

- `ai-infrastructure-peer-pair-evidence-note-2026-q2-v1.json` — complete Evidence Note, claims, source links and cell-level evidence hashes
- `ai-infrastructure-peer-pair-evidence-note-2026-q2-v1.csv` — 12 pairwise comparisons in tabular form
- `ai-infrastructure-peer-pair-evidence-note-2026-q2-v1.sha256` — checksum for the frozen Evidence Note JSON
- `ai-infrastructure-peer-pair-evidence-note-2026-q2-v1.bib` — DOI-aware BibTeX citation
- `cross-section-evidence-note-schema.json` — JSON Schema for the Evidence Note
- `ai-infrastructure-cross-section-2026-09-01-v2.json` — frozen six-issuer source release
- `ai-infrastructure-cross-section-2026-09-01-v2.sha256` — checksum for the source release JSON
- `README.md` — this file

## Integrity

Evidence Note JSON SHA-256:

`490838cbfb3d6187f454009427184d5bfdec9f72efda68f97d60bccee5950546`

Source release JSON SHA-256:

`430406a8dbea1c21e7ca0ce09f829580616f33b0552ce0089e4b977d01cbc809`

The Evidence Note JSON and source release JSON are frozen. A later observation must create a new version; it must not overwrite these files.

## Method

Issuers are grouped by adjacent infrastructure role: compute accelerators, networking and interconnect, and server systems.

Each difference is first issuer minus second issuer using the exact stored ratio from the frozen source release; displayed percentage-point values are ratios multiplied by 100.

Every value preserves issuer, fiscal period, period end, SEC acceptance timestamp, accession, filing URL, comparability tier and a SHA-256 of the cell evidence object.

No aggregate score is calculated. The comparisons describe selected filing values and do not infer causality, valuation or expected return.

## Known limits

- Issuer fiscal-quarter end dates differ, so the comparisons are not synchronized calendar-quarter observations.
- The paired companies occupy related infrastructure roles but do not have identical products, revenue mixes or accounting economics.
- Company-wide filings do not isolate AI-only revenue, gross profit, R&D expense or diluted shares.
- The sample contains six issuers and supports descriptive comparisons only; it is not a statistical factor test.
- The Super Micro diluted-share observation is Tier B because its completed Form 10-K does not separately tag the reconstructed fourth quarter.
- The evidence note is research-only and is not an investment recommendation, security ranking, forecast or accounting opinion.

## Citation

AhaSignals. (2026). *AI Infrastructure Filing Cross-Section: 2026 Q2 Evidence Note* (Version 1.0.0) [Data set]. AhaSignals. https://doi.org/10.5281/zenodo.22239714

## Rights and attribution

The original compilation, methodology and documentation are licensed under Creative Commons Attribution 4.0 International. Underlying factual information remains attributable to the cited SEC filings and issuers.

AhaSignals is an independent research publisher. Company names and ticker symbols identify the relevant SEC filers only. AhaSignals is not affiliated with, endorsed by or sponsored by those issuers or the SEC. This dataset is research-only and is not investment, trading, legal, accounting or tax advice.
