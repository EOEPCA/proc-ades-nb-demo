#!/usr/bin/env bash

ORIG_DIR="$(pwd)"
cd "$(dirname "$0")"
BIN_DIR="$(pwd)"

trap "cd '${ORIG_DIR}'" EXIT

# eval $(minikube -p minikube docker-env)

docker build -f .docker/Dockerfile -t rconway/jupyter:1.1 .
docker tag rconway/jupyter:1.1 rconway/jupyter:latest

# eval $(minikube -p minikube docker-env -u)
