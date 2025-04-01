#!/usr/bin/env zsh

echo ""
echo "docker run --name demo4-1 -p 8080:8080 -d demo4"
read \?""
docker run --name demo4-1 -p 8080:8080 -d demo4
read \?""
open -na "Google Chrome" --args --incognito "http://localhost:8080"

echo ""
read \?""
echo "docker volume create --name demo4-vol"
echo "docker run --name demo4-2 -p 8081:8080 -e WELCOME_STRING=COMP90024 -v demo4-vol:/usr/share/nginx/html --read-only --tmpfs /tmp:rw,nosuid,nodev --tmpfs /var/log/nginx:rw,nosuid,nodev,uid=101,gid=101 --tmpfs /var/cache/nginx:rw,nosuid,nodev,uid=101,gid=101 --tmpfs /var/run:rw,nosuid,nodev,uid=101,gid=101 --security-opt no-new-privileges --cap-drop=ALL -d demo4"
read \?""
docker volume create --name demo4-vol
docker run --name demo4-2 -p 8081:8080 -e WELCOME_STRING=COMP90024 -v demo4-vol:/usr/share/nginx/html --read-only --tmpfs /tmp:rw,nosuid,nodev --tmpfs /var/log/nginx:rw,nosuid,nodev,uid=101,gid=101 --tmpfs /var/cache/nginx:rw,nosuid,nodev,uid=101,gid=101 --tmpfs /var/run:rw,nosuid,nodev,uid=101,gid=101 --security-opt no-new-privileges --cap-drop=ALL -d demo4
read \?""
open -na "Google Chrome" --args --incognito "http://localhost:8081"
