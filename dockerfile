# Usa una imagen base de Python
FROM python:3.12-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de dependencias e instala las librerías
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copia la carpeta "src" (que contiene main.py) al contenedor
COPY src/ ./src/

# Ejecuta el comando para iniciar la aplicación con Uvicorn  
# La sintaxis "src.main:app" indica que en el módulo main (ubicado en src) se encuentra el objeto FastAPI llamado "app"
CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "80"]