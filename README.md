# Floki

personal home server

## host machine

- docker
- docker-compose
- git
- vim
- snapraid
- mergerfs
- zsh + ohmyzsh
- avahi

sudo apt-get install avahi-daemon avahi-discover avahi-utils libnss-mdns mdns-scan
sudo systemctl restart avahi-daemon

### create mount directories

```
sudo mkdir -p /mnt/parity/disk1 /mnt/data/disk1 /mnt/data/disk2 /mnt/data/disk3 /mnt/data/backup /mnt/media
```

## services

- gollum wiki
- plex media server
- syncthing

## env vars

* `APP_DATA` app config data
* `MEDIA_STORAGE` location of media data

### music

put new music in `/mnt/media/downloads/music` then run `make import-music`

### snapraid

use `sudo snapraid diff` to check if we need to run `sudo snapraid sync`
