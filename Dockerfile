# Usar una imagen oficial de Python como base
FROM python:3.12-slim

# Crear directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar requirements e instalar dependencias
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el código fuente completo al contenedor
COPY . .

# Comando por defecto para FastAPI (se sobreescribe en docker-compose)
CMD ["uvicorn", "ingestion.src.main:app", "--host", "0.0.0.0", "--port", "8000"]