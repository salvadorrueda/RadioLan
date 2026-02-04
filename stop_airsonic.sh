#!/bin/bash

# stop_airsonic.sh - Stops the Airsonic container

echo "Stopping Airsonic container..."
docker compose down

echo "Airsonic has been stopped."
