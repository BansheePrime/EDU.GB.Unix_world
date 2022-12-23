#!/bin/bash
# run as sudo -s
cp -f ./info.php /var/www/html/ &&
# cp -f /etc/nginx/sites-available/default /etc/nginx/sites-available/default.bak
cp -f ./default /etc/nginx/sites-available/default
# cp -f /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bak
cp -f ./nginx.conf /etc/nginx/nginx.conf
systemctl restart nginx
systemctl restart php8.1-fpm.service