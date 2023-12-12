#!/bin/bash

docker build -t sample-app:latest-v3 .

docker run --name sample-app -p 8080:8080 sample-app:latest-v3

