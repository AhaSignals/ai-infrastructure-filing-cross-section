# Recent AI Infrastructure Filing Cross-Section: 2026 Q2

- Version: 1.0.0
- Publisher: AhaSignals
- Published: 2026-09-05
- Knowledge cutoff: 2026-09-04T00:00:00.000Z
- License: CC BY 4.0
- Canonical research page: https://ahasignals.com/research/recent-ai-infrastructure-filing-cross-section/
- Public repository: https://github.com/AhaSignals/ai-infrastructure-filing-cross-section
- Release: https://github.com/AhaSignals/ai-infrastructure-filing-cross-section/releases/tag/recent-ai-infrastructure-cross-section-v1.0.0
- DOI: https://doi.org/10.5281/zenodo.22313302

## Research question

What can one frozen filing contract reveal across two recently listed AI cloud operators and one AI connectivity supplier without hiding their different filer regimes, accounting presentations or business roles?

## Scope

The release contains one 18-cell Q2 2026 cross-section and three accession-level source ledgers:

- CoreWeave: 14 selected 2025 facts preserved across the August 2025 and August 2026 Form 10-Q accessions.
- Nebius: 34 Q2 and first-half 2025 statement-of-operations observations matched across two SEC-filed Form 6-K exhibits; no differences were observed at the issuer-presented precision.
- Astera Labs: 83 exact SEC Company Facts keys matched across two Form 10-Q accessions; one apparent API difference was rejected after filing-context review and one issuer-disclosed presentation reclassification was confirmed.
- Cross-section: six formula-defined metrics for each issuer, for 18 cells in total, with a public-information clock and a Tier A-C comparability label on every cell.

The release does not publish a composite rank. It preserves missingness, filer-regime differences and cell-level limitations rather than normalizing them away.

## Package layout

- `cross-section/` — cross-sectional JSON, CSV and BibTeX files.
- `ledgers/coreweave/` — CoreWeave accession-level revision ledger.
- `ledgers/nebius/` — Nebius accession-level comparative ledger.
- `ledgers/astera-labs/` — Astera Labs accession-level revision ledger.
- `schemas/` — JSON Schemas for the cross-section and ledger formats.
- `RELEASE-MANIFEST.sha256` — SHA-256 for every frozen release file except the manifest itself.
- `verify-release.sh` — offline checksum, schema-boundary and point-in-time checks.
- `CITATION.cff` — citation metadata for this release.
- `DATA-LICENSE.md` — rights and source-attribution boundary.

## Point-in-time contract

1. A source is eligible only when its SEC acceptance timestamp is on or before the stated knowledge cutoff.
2. Earlier accession values remain separately addressable; later comparatives do not overwrite the earlier information state.
3. Missing or materially non-comparable cells remain missing or explicitly limited.
4. Cross-sectional calculations use the disclosed formula and raw inputs stored in each cell.
5. A changed comparative is not called a restatement unless the issuer identifies it as one.

## Bounded findings

- Nebius reported the fastest revenue expansion and highest capital-spending intensity in the selected cells, but its operating-cash-flow ratio is dominated by a disclosed deferred-revenue inflow and is not a normalized cash-conversion measure.
- CoreWeave and Nebius are closer operating-role comparators than Astera Labs. Astera Labs is included as a supply-chain contrast, not as an identical business-model peer.
- Astera Labs was the only issuer in this set with positive quarterly operating income under the selected issuer-filed presentation.
- CoreWeave and Nebius reported materially higher year-to-date capital-spending intensity than Astera Labs, reflecting different positions in the infrastructure stack.

These are descriptive filing comparisons. They are not estimates of valuation, expected return, alpha or investment merit.

## Verify

From this directory:

```sh
./verify-release.sh
```

The verifier checks every file hash, the declared payload hashes, the three-issuer and 18-cell boundaries, the one Tier C exception, source acceptance times and ledger-specific counts.

## Citation

AhaSignals. (2026). *Recent AI Infrastructure Filing Cross-Section: 2026 Q2* (Version 1.0.0) [Data set]. AhaSignals. https://doi.org/10.5281/zenodo.22313302

## Research boundary

AhaSignals is an independent research publisher. Company names and ticker symbols identify the cited SEC filers and source evidence only. AhaSignals is not affiliated with or endorsed by the issuers or the SEC. Research and education only; not investment, trading, legal, accounting or tax advice.
