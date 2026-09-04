#!/usr/bin/env sh

set -eu

release_root=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
cd "$release_root"

if command -v sha256sum >/dev/null 2>&1; then
  sha256sum --check RELEASE-MANIFEST.sha256
elif command -v shasum >/dev/null 2>&1; then
  shasum -a 256 --check RELEASE-MANIFEST.sha256
else
  echo "No SHA-256 utility found. Install sha256sum or shasum." >&2
  exit 1
fi

node - <<'NODE'
const fs = require('node:fs');
const crypto = require('node:crypto');

const readJson = (path) => JSON.parse(fs.readFileSync(path, 'utf8'));
const digest = (value) => crypto.createHash('sha256').update(value).digest('hex');
const verifyPayload = (label, payload) => {
  const { integrity, ...body } = payload;
  if (!integrity || integrity.algorithm !== 'SHA-256') throw new Error(`${label}: missing SHA-256 integrity block`);
  if (digest(JSON.stringify(body)) !== integrity.payloadSha256) throw new Error(`${label}: payload hash mismatch`);
};

const crossSection = readJson('cross-section/recent-ai-infrastructure-filing-cross-section-2026-q2-v1.json');
const coreweave = readJson('ledgers/coreweave/crwv-revision-ledger-2026-q2-v1.json');
const nebius = readJson('ledgers/nebius/nbis-accession-level-pit-comparative-ledger-2026-q2-v1.json');
const astera = readJson('ledgers/astera-labs/alab-accession-level-pit-revision-ledger-2026-q2-v1.json');

for (const [label, payload] of [['cross-section', crossSection], ['CoreWeave ledger', coreweave], ['Nebius ledger', nebius], ['Astera Labs ledger', astera]]) verifyPayload(label, payload);

if (crossSection.rows.length !== 3) throw new Error('Cross-section must contain three issuers.');
if (!crossSection.rows.every((row) => Object.keys(row.metrics).length === 6)) throw new Error('Each issuer must contain six metric cells.');
const cells = crossSection.rows.flatMap((row) => Object.values(row.metrics));
if (cells.length !== 18) throw new Error('Cross-section must contain 18 metric cells.');
if (cells.filter((cell) => cell.comparabilityTier === 'C').length !== 1) throw new Error('Cross-section must preserve exactly one Tier C cell.');
if (!crossSection.rows.every((row) => Date.parse(row.source.acceptedAt) <= Date.parse(crossSection.artifact.knowledgeCutoff))) throw new Error('A source exceeds the knowledge cutoff.');

if (coreweave.summary.entryCount !== 14) throw new Error('CoreWeave ledger must contain 14 entries.');
if (nebius.entries.length !== 34 || !nebius.entries.every((entry) => entry.change.delta === 0)) throw new Error('Nebius ledger must contain 34 zero-difference observations.');
if (astera.summary.matchedFactCount !== 83 || astera.summary.confirmedComparativeChangeCount !== 1) throw new Error('Astera Labs ledger boundary mismatch.');
if (astera.entries[0].resolution.primaryStatementPriorValue !== 2517000 || astera.entries[0].resolution.primaryStatementLaterValue !== 2517000) throw new Error('Astera Labs primary-statement context check failed.');

console.log('Release contract passed: 3 issuers, 18 cells, 3 accession-level ledgers and point-in-time source clocks.');
NODE
