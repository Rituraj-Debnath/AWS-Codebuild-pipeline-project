#!/bin/bash
docker stop  rex03/simple-python-app || true
docker rm rex03/simple-python-app || true

