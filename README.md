# Floki

personal home server

## host machine

- docker
- docker-compose
- git
- vim
- snapraid
- mergerfs

## services

- gollum wiki
- plex media server

## env vars

* `APP_DATA` app config data
* `MEDIA_STORAGE` location of media data

### music

put new music in `/mnt/media/downloads/music` then run `make import-music`

### snapraid

use `sudo snapraid diff` to check if we need to run `sudo snapraid sync`
