#!/bin/bash
# run as sudo -s
apt update
systemctl disable --now apache2
apt install -y nginx &&
systemctl enable nginx
cp -f /var/www/html/index.nginx-debian.html /var/www/html/index.nginx-debian.html.bak
cp -f ./index.html /var/www/html/index.nginx-debian.html &&
systemctl restart nginx