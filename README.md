# mainframe-batch-aws

Practice project: a COBOL batch job (JCL-style) that I'm moving to AWS with CI/CD.
Built with GnuCOBOL, not IBM z/OS, as a learning project.

## Step 1: run it locally
    ./scripts/build.sh
    ./scripts/run.sh

Expected: 10 records read, 7 accepted, 3 rejected, return code 4.
See data/output/report.txt and data/output/rejects.txt.
