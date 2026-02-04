#!/bin/bash

# start_airsonic.sh - Initializes directories and starts Airsonic container

# Create data directories if they don't exist
mkdir -p data/airsonic/config
mkdir -p data/airsonic/music
mkdir -p data/airsonic/playlists
mkdir -p data/airsonic/podcasts
mkdir -p data/airsonic/media

echo "Starting Airsonic container..."
docker compose up -d

echo "------------------------------------------------"
echo "RadioLan is starting!"
echo "You can access it at: http://localhost:4040"
echo "Default credentials: admin / admin"
echo "------------------------------------------------"
echo "Check container status with: docker compose ps"
