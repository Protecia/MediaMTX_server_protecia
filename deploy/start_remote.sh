#!/usr/bin/env bash

# Tot start the docker compose
docker compose --env-file ../combined-$1.env -f docker-compose-$1.yaml up -d
