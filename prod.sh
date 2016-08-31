#!/usr/bin/env sh

[[ $(uname -m) == arm* ]] && ARG="-f docker-compose.armhf.yml"

docker-compose -f docker-compose.yml \
               -f docker-compose.credentials.yml \
               "$ARG" \
               "$@"
