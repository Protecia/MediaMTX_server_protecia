#!/usr/bin/env bash

# To start the docker compose
docker compose -p mediamtx --env-file local.env -f docker-compose.yaml up
