# RadioLan

RadioLan is a Docker-based web radio designed to stream music inside a local area network (LAN).
It allows users on the same internal network to listen to music directly from their web browser, without requiring internet access or external streaming services.

The project uses Docker containers to simplify deployment, configuration, and portability. Once started, RadioLan exposes a web interface where clients connected to the LAN can access the radio stream easily from any modern browser.

RadioLan is ideal for schools, offices, labs, or home networks where a private, lightweight, and easy-to-deploy radio solution is needed. The containerized approach ensures consistency across environments and makes setup, start, and shutdown straightforward.

## Getting Started

### Prerequisites

Before starting, ensure you have Docker installed on your system. You can use the provided script to verify your installation:

```bash
./check_docker.sh
```

This script will check if Docker is installed and if the daemon is running correctly.

## Usage

### Starting RadioLan (Airsonic)

To start the radio server, run:

```bash
./start_airsonic.sh
```

Once started, you can access the web interface at `http://localhost:4040`.
- **Default Username:** `admin`
- **Default Password:** `admin`

### Stopping RadioLan

To stop the server and the container, run:

```bash
./stop_airsonic.sh
```

## Project Structure

- `data/`: Contains persistent data for Airsonic (config, music, etc.)
- `check_docker.sh`: Verification script for Docker prerequisites.
- `docker-compose.yml`: Docker configuration for the Airsonic service.
- `start_airsonic.sh` / `stop_airsonic.sh`: Management scripts.
