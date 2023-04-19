#!/usr/bin/env zsh

echo ""
echo "docker service scale nginx=6"
echo ""
docker service scale nginx=6

read \?""
echo ""
echo "docker service ps nginx"
read \?""
docker service ps nginx

read \?""
echo ""
echo "docker service update --image=alwynpan/comp90024:demo1 nginx"
read \?""
docker service update --image=alwynpan/comp90024:demo1 nginx

read \?""
echo ""
echo "docker service ps nginx"
read \?""
docker service ps nginx
