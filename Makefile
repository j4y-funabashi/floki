up:
	docker compose down -v --rmi --remove-orphans && docker compose up -d

import-music:
	./scripts/import-music.sh
