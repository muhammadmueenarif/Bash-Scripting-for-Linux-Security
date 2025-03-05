#!/bin/bash

echo "who is logged in"
#this will show username
whoami
echo "---------------------------------------------------------------"

echo "disc space usage: "
#disc space usage
df -h
echo "----------------------------------------------------------------"

echo "memory usage: "
#show memory usage
free -h
echo "------------------------------------------------------------------"

echo "running programs "
#show running programs
ps aux

echo "---------------------------------------------------------------------"

echo “network connections ”
#show network connections
echo "---------------------------------------------------------------------"
netstat -antop

#echo "open ports "
#show open ports
#sudo lsof -iTCP -iUDP
#echo "---------------------------------------------------------------------"
