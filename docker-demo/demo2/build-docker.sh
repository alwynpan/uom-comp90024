#!/usr/bin/env zsh

echo "docker build -t demo2 ."
read \?""
docker build -t demo2 .

echo ""
echo ""
echo ""

echo "docker scout quickview"
read \?""
docker scout quickview
