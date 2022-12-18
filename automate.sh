#!/bin/bash

set -e

docker rm -f $(docker ps -a -q)

docker rmi $(docker images -q)

echo "Pulling your Docker Image from DockerHub..."

docker pull albatrossondocker/clockbox

echo "Starting your  Docker Image on port 5000"

docker run -d -p 5000:80 $(docker images -q)

echo "Deployed"