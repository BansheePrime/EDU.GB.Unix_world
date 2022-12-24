#!/bin/bash
cp -f /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.bak
cp -f /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bak
cp -f /vagrant/nginx_default_conf.txt /etc/nginx/conf.d/default.conf
rc-service nginx restart
