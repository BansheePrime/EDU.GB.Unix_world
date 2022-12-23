#!/bin/bash
# run as sudo -s
apt update
systemctl disable --now apache2
apt install nginx &&
systemctl enable nginx
cp -f ./index.html /usr/share/nginx/html/ &&
systemctl restart nginx