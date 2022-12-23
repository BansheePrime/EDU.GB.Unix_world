#!/bin/bash
# run as sudo -s
apk add php7 php7-fpm php7-opcache
apk add php7-gd php7-zlib php7-curl
rc-update add nginx default
rc-update add php-fpm7 default

cp -f ./test.php /usr/share/nginx/html/ &&
# add location to /etc/nginx/conf.d/default.conf
cp -f /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.bak
cp -f ./default.conf /etc/nginx/conf.d/default.conf
# run as http://your-ip/test.php

# fastcgi_param  SCRIPT_FILENAME  /scripts$fastcgi_script_name;

# # backup fast CGI settings
# cp -f /etc/nginx/fastcgi_params /etc/nginx/fastcgi_params.bak
# cp -f ./fastcgi_params /etc/nginx/fastcgi_params

rc-service nginx restart
rc-service php-fpm7 restart