#!/usr/bin/env sh

set -eu

repository_root=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
cd "$repository_root"

if command -v sha256sum >/dev/null 2>&1; then
  sha256sum --check RELEASE-MANIFEST.sha256
elif command -v shasum >/dev/null 2>&1; then
  shasum -a 256 --check RELEASE-MANIFEST.sha256
else
  echo "No SHA-256 utility found. Install sha256sum or shasum." >&2
  exit 1
fi

echo "Verified all eight frozen v1.0.0 release files."
