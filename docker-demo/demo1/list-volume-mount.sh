#!/usr/bin/env zsh
clear

echo "docker exec -ti nginx-volume sh -c \"ls -ltr /usr/share/nginx/html\""
read \?""
docker exec -i nginx-volume sh -c "ls -ltr /usr/share/nginx/html"

read \?""
echo ""
echo "docker exec -ti nginx-bind sh -c \"ls -ltr /usr/share/nginx/html\""
read \?""
docker exec -i nginx-bind sh -c "ls -ltr /usr/share/nginx/html"
