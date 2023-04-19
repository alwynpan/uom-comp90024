#!/usr/bin/env zsh

echo ""
echo "docker run --name demo2-1 -p 8080:80 -d demo2"
read \?""
docker run --name demo2-1 -p 8080:80 -d demo2
read \?""
open -na "Google Chrome" --args --incognito "http://localhost:8080"

echo ""
read \?""
echo "docker run --name demo2-2 -p 8081:80 -e WELCOME_STRING=\"COMP90024\" -d demo2"
read \?""
docker run --name demo2-2 -p 8081:80 -e WELCOME_STRING=COMP90024 -e TEST=hello -d demo2
read \?""
open -na "Google Chrome" --args --incognito "http://localhost:8081"
