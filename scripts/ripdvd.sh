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

# rip dvd
# encode
# refresh plex

dvd_title=$(blkid -o value -s LABEL /dev/dvd)
rip_dir="/mnt/media/downloads/dvdrips/${dvd_title}"
#dvdbackup -M -o "${rip_dir}"

echo "ripping ${dvd_title} to ${rip_dir}"

hb="HandBrakeCLI"
"${hb} --preset --input ${rip_dir} --main-feature Super HQ 1080p30 Surround"
