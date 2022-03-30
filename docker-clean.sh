#!/bin/bash

docker-compose down
docker rm -f $(docker ps -a -q)
docker volume rm $(docker volume ls -q)
docker-compose up -d

# Script for stopping & removing all running docker containers on a server
# Run from directory that you want to start new container