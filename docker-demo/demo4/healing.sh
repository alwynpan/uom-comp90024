#!/usr/bin/env zsh

# function pause(){
#   read -p "$*"
# }

echo ""
echo "docker ps -a"
echo ""
docker ps -a

# pause 'Press [Enter] key to continue...'
read \?""
echo ""
echo "docker stop \$(docker ps -aq)"
read \?""
docker stop $(docker ps -aq)

# pause 'Press [Enter] key to continue...'
echo ""
echo "docker ps -a"
echo ""
docker ps -a

sleep 5

echo ""
echo "docker ps -a"
echo ""
docker ps -a
