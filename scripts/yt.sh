#!/usr/bin/env bash

docker run --rm \
    --user "${UID}":"${GID}" \
    -v "${PWD}":/downloads \
    wernight/youtube-dl \
    -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best' \
    --restrict-filenames \
    "${1}"
