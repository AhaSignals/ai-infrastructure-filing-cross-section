#!/usr/bin/env sh

set -eu

package_root=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
cd "$package_root"

if command -v sha256sum >/dev/null 2>&1; then
  sha256sum --check coreweave-later-comparatives-v1.sha256
elif command -v shasum >/dev/null 2>&1; then
  shasum -a 256 --check coreweave-later-comparatives-v1.sha256
else
  echo "No SHA-256 utility found. Install sha256sum or shasum." >&2
  exit 1
fi

echo "Verified the frozen CoreWeave later-comparatives case-study package."
