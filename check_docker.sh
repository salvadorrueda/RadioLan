#!/bin/bash

# check_docker.sh - Verifies if Docker is installed and running

# Define colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo "Checking Docker installation..."

# Check if docker command exists
if ! command -v docker &> /dev/null
then
    echo -e "${RED}Error: Docker is not installed.${NC}"
    echo "Please visit https://docs.docker.com/get-docker/ to install it."
    exit 1
else
    echo -e "${GREEN}Docker is installed.${NC}"
fi

# Check if Docker daemon is running
echo "Checking if Docker daemon is running..."
if ! docker info &> /dev/null
then
    echo -e "${RED}Error: Docker daemon is not running.${NC}"
    echo "Please start the Docker service (e.g., 'sudo systemctl start docker')."
    exit 1
else
    echo -e "${GREEN}Docker daemon is running smoothly.${NC}"
fi

# Check Docker Compose (useful for later RadioLan development)
if command -v docker compose &> /dev/null
then
    echo -e "${GREEN}Docker Compose is also available.${NC}"
else
    echo -e "${RED}Warning: Docker Compose (v2) not found. You might need it for multi-container setups.${NC}"
fi

echo -e "${GREEN}All checks passed! System is ready for RadioLan.${NC}"
exit 0
