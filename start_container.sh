#!/bin/bash
set -e
docker pull rex03/simple-python-app
docker run -d -p 5000:5000 rex03/simple-python-app
