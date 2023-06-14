#!/bin/bash

docker compose up -d
echo "user-secret: $(docker exec -it transmission cat /run/secrets/transmission_user)"
echo "pass-secret: $(docker exec -it transmission cat /run/secrets/transmission_pass)"
echo "user-env: $(docker exec -it transmission echo ${USER})"
echo "pass-env: $(docker exec -it transmission echo ${PASS})"

