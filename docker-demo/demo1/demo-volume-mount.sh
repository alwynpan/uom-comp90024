#!/usr/bin/env zsh
clear

echo "docker volume create --name htdocs"
read \?""
docker volume create --name htdocs

read \?""
echo ""
echo "docker run --name nginx-volume -p 8080:80 -v htdocs:/usr/share/nginx/html -d nginx"
read \?""
docker run --name nginx-volume -p 8080:80 -v htdocs:/usr/share/nginx/html -d nginx

read \?""
open -na "Google Chrome" --args --incognito "http://localhost:8080"

read \?""
echo ""
echo "docker run --name nginx-bind -p 8081:80 -v $(pwd)/htdocs:/usr/share/nginx/html -d nginx"
read \?""
docker run --name nginx-bind -p 8081:80 -v $(pwd)/htdocs:/usr/share/nginx/html -d nginx

read \?""
open -na "Google Chrome" --args --incognito "http://localhost:8081"
