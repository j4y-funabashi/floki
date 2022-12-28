up:
	docker compose down -v --rmi all --remove-orphans && docker compose up -d

import-music:
	./scripts/import-music.sh
