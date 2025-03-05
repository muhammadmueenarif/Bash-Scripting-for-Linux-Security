#!/bin/bash

#block outgoing traffic
sudo ufw default deny outgoing

#block incoming traffic
sudo ufw default deny incoming 

#allow web browsers
#if we know numbers for these then we can use numbers like 80 for http, 
#443 for https
sudo ufw allow http
sudo ufw allow https

#53 is number for port
sudo ufw allow out 53