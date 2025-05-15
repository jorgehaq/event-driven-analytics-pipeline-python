# Makefile para entorno Docker local

up:
	docker-compose up --build

down:
	docker-compose down

logs:
	docker-compose logs -f

ps:
	docker-compose ps
