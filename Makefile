# Makefile para entorno Docker local

up:
	docker-compose up --build

down:
	docker-compose down

logs:
	docker-compose logs -f

ps:
	docker-compose ps

test:
	curl --fail http://localhost:8000/health && echo "" && echo "✅ Servicio FASTAPI activo" || (echo "" && echo "❌ ERROR: FastAPI no respondió")
