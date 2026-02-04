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

### Option A: RadioLan Simple (Python - Best for LAN) [RECOMMENDED]

A lightweight Python/Flask server with a modern web player. Fastest to start and consume few resources.

To start the simple radio server:
```bash
./start_simple.sh
```
- **Web UI:** `http://localhost:5000`
- **Music Folder:** `data/simple_radio/music/`
- **Setup:** Just drop your `.mp3` files in the folder and refresh the browser.

### Option B: Airsonic (Classic Radio)

To start the Airsonic radio server:
```bash
./start_airsonic.sh
```
- **Web UI:** `http://localhost:4040`
- **Default Login:** `admin` / `admin`

### Option C: Jellyfin (Advanced)

To start the Jellyfin server:
```bash
./start_jellyfin.sh
```
- **Web UI:** `http://localhost:8096`

### Stopping RadioLan

To stop whichever server you are running, use the corresponding script:
```bash
./stop_simple.sh
# OR
./stop_airsonic.sh
# OR
./stop_jellyfin.sh
```

## Project Structure

- `data/`: Persistent data and music folders for all servers.
- `app.py`: Backend for the Simple Radio option.
- `templates/`: Frontend for the Simple Radio option.
- `Dockerfile`: Image definition for the Simple Radio.
- `docker-compose.*.yml`: Configs for the different engines.
- `start_*.sh` / `stop_*.sh`: Management scripts.
