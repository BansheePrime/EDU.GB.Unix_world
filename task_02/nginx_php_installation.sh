#!/usr/bin/env bash

# SIC! start script as 'su'

# # NGINX installation
# echo "deb https://nginx.org/packages/ubuntu/ focal nginx" > /etc/apt/sources.list.d/nginx.list
# apt update
# apt install -y nginx

# # ## In case of GPG error "NO_PUBKEY $key"
# # ## Replace $key with the corresponding $key from your GPG error.
# # apt-key adv --keyserver keyserver.ubuntu.com --recv-keys $key
# # apt update
# # apt install -y nginx

# systemctl start nginx
# systemctl enable nginx

# PHP 7.4 installation
apt install software-properties-common
add-apt-repository -y ppa:ondrej/php
# /etc/apt/sources.list.d/ondrej-ubuntu-php-focal.list
# deb http://ppa.launchpad.net/ondrej/php/ubuntu focal main

## Switching to Apache
# add-apt-repository -y ppa:ondrej/apache2

# add-apt-repository -y ppa:ondrej/nginx-mainline
# # /etc/apt/sources.list.d/ondrej-ubuntu-nginx-mainline-focal.list
# # deb http://ppa.launchpad.net/ondrej/nginx-mainline/ubuntu focal main

apt update
apt install php7.4
apt install -y php7.4-cli php7.4-json php7.4-common php7.4-mysql php7.4-zip php7.4-gd php7.4-mbstring php7.4-curl php7.4-xml php7.4-bcmath

# phpmyadmin installation
apt install -y phpmyadmin