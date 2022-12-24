#!/bin/bash
# run as sudo -s
apt update
apt install -y php-cli php-fpm php-json php-zip php-gd php-mbstring php-curl php-xml php-bcmath
systemctl enable php8.1-fpm.service

cp -f ./info.php /var/www/html/ &&
# run as http://your-ip/info.php
cp -f /etc/nginx/sites-available/default /etc/nginx/sites-available/default.bak
cp -f ./default /etc/nginx/sites-available/default
cp -f /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bak
cp -f ./nginx.conf /etc/nginx/nginx.conf

systemctl restart nginx
systemctl restart php8.1-fpm.service

# See "systemctl status nginx.service" and "journalctl -xeu nginx.service" for details.