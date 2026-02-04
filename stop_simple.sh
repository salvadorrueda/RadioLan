#!/bin/bash

# stop_simple.sh - Stops the simple Python RadioLan server

echo "Stopping Simple RadioLan container..."
docker compose -f docker-compose.simple.yml down

echo "Simple Radio has been stopped."
