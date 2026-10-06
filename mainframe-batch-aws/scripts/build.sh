#!/usr/bin/env bash
# Compile the COBOL program with GnuCOBOL (free-format source).
set -euo pipefail
cd "$(dirname "$0")/.."
mkdir -p bin
cobc -x -free -o bin/dailytxn cobol/DAILYTXN.cbl
echo "Build OK: bin/dailytxn"
