#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"
shasum -a 256 -c checksums.sha256

node --input-type=module -e '
  import { readFileSync } from "node:fs";
  const corpus = JSON.parse(readFileSync("corpus.json", "utf8"));
  const fail = (message) => { throw new Error(message); };
  if (corpus.artifact.version !== "1.0.0" || corpus.artifact.status !== "frozen") fail("unexpected artifact state");
  if (corpus.scope.observedIssuerCount !== 7 || corpus.coverage.length !== 7) fail("coverage count mismatch");
  if (corpus.scope.eventCount !== 18 || corpus.events.length !== 18) fail("event count mismatch");
  if (corpus.scope.comparativeValueDifferenceCount !== 14 || corpus.scope.sourceUpgradeCount !== 4) fail("event-class count mismatch");
  if (corpus.scope.signFlipCount !== 1 || corpus.scope.issuerRestatementCount !== 0) fail("classification count mismatch");
  if (new Set(corpus.events.map((event) => event.eventId)).size !== 18) fail("duplicate event ID");
  if (corpus.coverage.reduce((sum, issuer) => sum + issuer.eventCount, 0) !== 18) fail("coverage total mismatch");
  console.log("Corpus contract passed: 18 events across 7 observed issuers.");
'
