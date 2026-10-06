#!/usr/bin/env bash
# Run the batch job. The DD_ variables work like JCL DD statements:
# GnuCOBOL maps the file names TXNIN, RPTOUT, REJOUT to these paths.
set -u
cd "$(dirname "$0")/.."
mkdir -p data/output
export DD_TXNIN="data/input/transactions.dat"
export DD_RPTOUT="data/output/report.txt"
export DD_REJOUT="data/output/rejects.txt"

./bin/dailytxn
RC=$?
echo "DAILYTXN ended with RC=${RC}"

# Same idea as JCL condition codes: 0 = ok, 4 = warning, 8 or more = failure
if [ "${RC}" -ge 8 ]; then
  echo "JOB FAILED"
  exit "${RC}"
fi
exit 0
