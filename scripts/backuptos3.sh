#!/usr/bin/env bash

# Exit on error. Append "|| true" if you expect an error.
set -o errexit
# Exit on error inside any functions or subshells.
set -o errtrace
# Do not allow use of undefined vars. Use ${VAR:-} to use an undefined VAR
set -o nounset
# Catch the error in case mysqldump fails (but gzip succeeds) in `mysqldump |gzip`
set -o pipefail
# Turn on traces, useful while debugging but commented out by default
set -o xtrace

export AWS_ACCESS_KEY_ID="${AWS_ACCESS_KEY_ID}";
export AWS_SECRET_ACCESS_KEY="${AWS_SECRET_ACCESS_KEY}";
export AWS_DEFAULT_REGION="${AWS_DEFAULT_REGION}";

aws s3 sync /mnt/data/backup s3://backup.funabashi/;
