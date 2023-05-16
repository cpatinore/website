# Usa una imagen base de Python
FROM python:3.7

# Copia el archivo requirements.txt al contenedor
COPY ./requirements.txt .

# Instala las dependencias del proyecto
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto de los archivos fuente al contenedor
COPY . .

# Expone el puerto en el que se ejecuta el servidor
EXPOSE 10000

# Ejecuta el servidor con Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:10000", "main:app"]