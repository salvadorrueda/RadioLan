#!/bin/bash

# stop_jellyfin.sh - Stops the Jellyfin container

echo "Stopping Jellyfin container..."
docker compose -f docker-compose.jellyfin.yml down

echo "Jellyfin has been stopped."
