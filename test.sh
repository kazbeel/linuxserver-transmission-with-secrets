#!/bin/bash

docker compose up -d
docker exec -it transmission cat /run/secrets/transmission_user
docker exec -it transmission cat /run/secrets/transmission_pass
docker exec -it transmission echo ${USER}
docker exec -it transmission echo ${PASS}

