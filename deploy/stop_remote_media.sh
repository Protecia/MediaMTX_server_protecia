#!/usr/bin/env bash

# To start the docker compose
docker compose -p mediamtx --env-file ../combined-media-$1.env -f docker-compose-media$1.yaml down
