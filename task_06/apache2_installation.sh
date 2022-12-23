#!/bin/bash
# apk add openssl curl ca-certificates
# cp -f ./index.html /usr/share/nginx/html/ &&
apk add apache2 &&
rc-service apache2 start
rc-update add apache2 default
# rc-service apache2 restart