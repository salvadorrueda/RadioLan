#!/bin/bash

# start_jellyfin.sh - Initializes directories and starts Jellyfin container

# Create data directories if they don't exist
mkdir -p data/jellyfin/config
mkdir -p data/jellyfin/music

echo "Starting Jellyfin container..."
docker compose -f docker-compose.jellyfin.yml up -d

echo "------------------------------------------------"
echo "RadioLan (Jellyfin) is starting!"
echo "You can access it at: http://localhost:8096"
echo "Follow the initial setup wizard to create your account."
echo "------------------------------------------------"
echo "Check container status with: docker compose -f docker-compose.jellyfin.yml ps"
