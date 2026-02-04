FROM python:3.11-slim

WORKDIR /app

# Install Flask
RUN pip install --no-cache-dir flask

# Copy source code
COPY app.py .
COPY templates/ ./templates/

# Default music directory inside container
ENV MUSIC_DIR=/data/music

EXPOSE 5000

CMD ["python", "app.py"]
