#!/bin/bash

RANDOM_NUM="$(date +%T | cut -d: -f3)"

docker rmi `docker images -a -q`

docker ps `docker ps -a -q`

docker build -t sample-app:latest-${RANDOM_NUM} .

docker run --name sample-app-${RANDOM_NUM} -p 8080:8080 sample-app:latest-${RANDOM_NUM}

