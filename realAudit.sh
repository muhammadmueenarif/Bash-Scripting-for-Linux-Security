#!/bin/bash

#get system information
echo "host name: $(hostname)"
echo "linux version: $(uname -r)"
echo "system uptime: $(uptime -p)"
echo "---------------------------------------------------------"

#user information
echo "logged in $(whoami)"
echo "---------------------------------------------------------"

#network security checks
echo "firewall status: "
sudo ufw status
echo "------------------------------------------------------------"

#network activity
netstat -antop