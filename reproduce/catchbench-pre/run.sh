#!/usr/bin/env bash
# Reproduce the CatchBench 0.1.2 PRE board shown in the chapter's practice box.
# Run from this directory in a fresh Python 3.12 environment.
set -euo pipefail
python -m pip install -r requirements.txt
catchbench --task pre > output.txt
if cmp -s output.txt expected-output.txt; then
  echo "Output matches expected-output.txt byte for byte."
else
  echo "Output differs from expected-output.txt; see diff below." >&2
  diff expected-output.txt output.txt || true
  exit 1
fi
