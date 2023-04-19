#!/usr/bin/env zsh

echo "docker rm -f \$(docker ps -aq)"

docker rm -f $(docker ps -aq)

docker rmi demo2:latest

rm -rf htdocs

clear
