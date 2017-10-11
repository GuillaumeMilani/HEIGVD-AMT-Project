#!/bin/sh
docker-compose down -v
docker-compose rm -vf
docker rm $(docker ps -aq) -f
docker rmi $(docker images -aq) -f