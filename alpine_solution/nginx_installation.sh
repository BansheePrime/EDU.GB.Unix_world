#!/bin/bash
apk add openssl curl ca-certificates
printf "%s%s%s\n" "http://nginx.org/packages/alpine/v" `grep -Eo '^[0-9]+\.[0-9]+' /etc/alpine-release` "/main" | tee -a /etc/apk/repositories
printf "%s%s%s\n" "http://nginx.org/packages/mainline/alpine/v" `grep -Eo '^[0-9]+\.[0-9]+' /etc/alpine-release` "/main" | tee -a /etc/apk/repositories
curl -o /tmp/nginx_signing.rsa.pub https://nginx.org/keys/nginx_signing.rsa.pub &&
openssl rsa -pubin -in /tmp/nginx_signing.rsa.pub -text -noout &&
mv /tmp/nginx_signing.rsa.pub /etc/apk/keys/
apk add nginx &&
cp -f /vagrant/index.html /usr/share/nginx/html/ &&
rc-service nginx start