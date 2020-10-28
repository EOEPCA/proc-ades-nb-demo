#!/usr/bin/env bash

ORIG_DIR="$(pwd)"
cd "$(dirname "$0")"
BIN_DIR="$(pwd)"

trap "cd '${ORIG_DIR}'" EXIT

# eval $(minikube -p minikube docker-env)

docker build -f .docker/Dockerfile -t rconway/jupyter:1.0 .
docker tag rconway/jupyter:1.0 rconway/jupyter:latest

# eval $(minikube -p minikube docker-env -u)
