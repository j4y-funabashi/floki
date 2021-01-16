# Floki

home file / media / app server

- plex media server
- influxdb
- grafana
- collectd
- get-iplayer?
- youtube-dl
- beets?

## env vars

`APP_DATA` app config data
`MEDIA_STORAGE` location of media data

### music

put new music in `/mnt/media/downloads/music` then run `make import-music`

### snapraid

use `sudo snapraid diff` to check if we need to run `sudo snapraid sync`
