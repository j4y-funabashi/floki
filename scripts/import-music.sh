#!/usr/bin/env sh

docker-compose run --entrypoint "beet import /downloads" beets
