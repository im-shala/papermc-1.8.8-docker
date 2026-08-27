# Minecraft 1.8.8 Paperspigot Server Docker

A Docker Compose setup for running a Paper 1.8.8 Minecraft server in a container environment.

## About

This project packages a Paper Minecraft server into a Docker image, providing an easy way to recreate the same server environment on another machine.

The server binary is downloaded automatically during the image build process.

This project started as a personal project to learn Docker, container lifecycle management, and server deployment practices through a real-world workload.

## Features

- Automated Java runtime setup
- Automatic Paper server binary provisioning
- Docker Compose based deployment
- Separated application and runtime data

## Requirements

- Docker
- Docker Compose

## Usage

1. Clone the repository:

```bash
git clone https://github.com/im-shala/papermc-1.8.8-docker.git
cd papermc-1.8.8-docker
```

2. Build the docker image:

```bash
docker compose build 
```

3. Start the server

```bash
docker compose up -d 
```

4. To stop the server, use

```bash
docker compose down 
```
