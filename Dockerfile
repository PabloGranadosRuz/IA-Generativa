# Usa una imagen oficial de Python
FROM python:3.11-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos de requirements
COPY requirements.txt ./

# Instala las dependencias
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copia el resto del código
COPY . .

# Expone el puerto donde corre FastAPI
EXPOSE 8081

# Comando para arrancar el backend
CMD ["python", "chat/web/web/app.py"]