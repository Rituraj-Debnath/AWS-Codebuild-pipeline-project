#!/bin/bash
set -e

# Stop the running container (if exists)
CONTAINER_ID=$(docker ps -q --filter ancestor=rex03/simple-python-app)
if [ ! -z "$CONTAINER_ID" ]; then
  echo "Stopping container $CONTAINER_ID..."
  docker stop "$CONTAINER_ID"
else
  echo "No running container found."
fi
