#!/bin/bash

# start_simple.sh - Starts the lightweight Python RadioLan server

# Create music directory if it doesn't exist
mkdir -p data/simple_radio/music

echo "Starting Simple RadioLan (Python/Flask)..."
docker compose -f docker-compose.simple.yml up -d --build

echo "------------------------------------------------"
echo "RadioLan Simple is starting!"
echo "Server URL: http://localhost:5000"
echo "Add your .mp3 files to: data/simple_radio/music/"
echo "------------------------------------------------"
echo "Check status with: docker compose -f docker-compose.simple.yml ps"
