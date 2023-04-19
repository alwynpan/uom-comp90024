#!/usr/bin/env zsh

docker service rm nginx

docker swarm leave

docker swarm leave

docker swarm leave --force

clear

docker node ls
