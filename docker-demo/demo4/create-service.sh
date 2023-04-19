#!/usr/bin/env zsh

echo ""
echo "docker service create --replicas 3 -p 8083:80 --name nginx nginx:alpine"
read \?""
docker service create --replicas 3 -p 8083:80 --name nginx nginx:alpine

read \?""
open -na "Google Chrome" --args --incognito "http://192.168.99.110:8083" "http://192.168.99.111:8083" "http://192.168.99.112:8083"

clear
