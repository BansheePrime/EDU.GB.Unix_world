#!/bin/bash
# apk add openssl curl ca-certificates
apk add apache2 &&
cat /dev/null > /var/www/localhost/htdocs/index.html
cp -f /vagrant/apache_index.html /var/www/localhost/htdocs/index.html.temp &&
rc-service apache2 start
rc-update add apache2 default
# rc-service apache2 restart