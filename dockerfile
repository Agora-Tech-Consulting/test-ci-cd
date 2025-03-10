# Utiliza una imagen base de Python
FROM python:3.12-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el contenido del proyecto al directorio de trabajo
COPY . /app

# Instala las dependencias especificadas en requirements.txt
RUN pip install -r requirements.txt

# Ejecuta el comando cuando se inicia el contenedor
CMD ["python", "./src/main.py"]