up:
	docker compose down -v --remove-orphans && docker compose up -d

import-music:
	./scripts/import-music.sh
