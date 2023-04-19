#!/usr/bin/env zsh

echo ""
echo "docker service scale nginx=6"
read \?""
docker service scale nginx=6

read \?""
echo ""
echo "docker service ls"
echo ""
docker service ls

read \?""
echo ""
echo "docker service scale nginx=1"
read \?""
docker service scale nginx=1

read \?""
echo ""
echo "docker service ls"
echo ""
docker service ls
