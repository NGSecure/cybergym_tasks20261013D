#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit 1e9394d5 addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
ICAgINxNrWsGk08pTQAAABkAAAAgICAgICAgICAgICAgICAgICAgICAgICAgAAAAAAAAAAAg//8gzLnNEXGk5RUgICAg/yAgICAPAAD//////yAgICD/ICAg////GwAAACAgICAgICAgIP8gICAgMjgtWFRTAP8gICAgICAgICAgICAgICAgICAgICAg
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
