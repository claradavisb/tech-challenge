#!/bin/bash

set -e 

docker build -t tech-challenge -f docker/Dockerfile .

docker stop new-webserver 2>/dev/null || true
docker rm new-webserver 2>/dev/null || true

docker run -d --name new-webserver -p 443:443 tech-challenge
