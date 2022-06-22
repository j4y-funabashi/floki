up:
	docker compose down -v && docker compose up -d

import-music:
	./scripts/import-music.sh
