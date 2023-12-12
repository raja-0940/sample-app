#!/bin/bash

docker rmi `docker images -a -q`

docker ps `docker ps -a -q`

docker build -t sample-app:latest-${RANDOM} .

docker run --name sample-app -p 8080:8080 sample-app:latest-${RANDOM}

