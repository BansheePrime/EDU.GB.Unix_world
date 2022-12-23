#!/bin/bash
# run as sudo -s
apt update
apt install -y php-cli php-fpm php-json php-zip php-gd php-mbstring php-curl php-xml php-bcmath
systemctl enable php8.1-fpm.service

cp -f ./info.php /var/www/html/ &&
# run as http://your-ip/info.php
cp -f /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bak
cp -f ./nginx.conf /etc/nginx/nginx.conf

systemctl restart nginx
systemctl restart php8.1-fpm.service

# Failed to enable unit: Unit file php-fpm.service does not exist.
# cp: cannot stat '/etc/nginx/conf.d/default.conf': No such file or directory
# Failed to restart php-fpm.service: Unit php-fpm.service not found.
