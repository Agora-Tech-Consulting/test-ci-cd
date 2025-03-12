import requests
import time

start_time = time.time()

# Define la URL de la aplicación
url = "http://localhost:80"  # Cambia el puerto si es necesario, por ej. "http://localhost:8000"

# Realiza una petición GET al endpoint principal de la aplicación
response = requests.get(url)

# Imprime la respuesta en formato JSON
print(response.json() , f"Tiempo de respuesta: {time.time() - start_time} segundos")
