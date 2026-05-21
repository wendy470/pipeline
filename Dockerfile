# Dockerfile
FROM python:3.10-slim

# Définir le dossier de travail
WORKDIR /app

# Copier les fichiers
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

# Exposer le port
EXPOSE 5000

# Lancer l'application
CMD ["python", "app.py"]
