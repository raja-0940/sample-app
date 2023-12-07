#!/bin/bash

APP_DIR="/root/dev_ops/devops_maven/hello-world"

docker build -t sample-app:latest $APP_DIR

docker run --name sample-app -p 8080:8080 sample-app:latest

