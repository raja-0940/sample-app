#!/bin/bash

RANDOM_NUM="$(date +%T | cut -d: -f3)"

docker ps `docker ps -a -q`

docker rmi `docker images -a -q`

docker build -t sample-app:latest-${RANDOM_NUM} .

docker run -d --name sample-app-${RANDOM_NUM} sample-app:latest-${RANDOM_NUM}



