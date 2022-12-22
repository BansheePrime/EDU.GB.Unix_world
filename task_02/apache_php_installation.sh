#!/usr/bin/env bash

# SIC! start script as 'su'

# # Apache installation
apt update
apt install -y apache2

systemctl start apache2
systemctl enable apache2

# PHP 7.4 installation
apt install software-properties-common
add-apt-repository -y ppa:ondrej/php
# /etc/apt/sources.list.d/ondrej-ubuntu-php-focal.list
# deb http://ppa.launchpad.net/ondrej/php/ubuntu focal main

# Setting for Apache
add-apt-repository -y ppa:ondrej/apache2
apt update

apt install -y php7.4
apt install -y php7.4-cli php7.4-json php7.4-common php7.4-mysql php7.4-zip php7.4-gd php7.4-mbstring php7.4-curl php7.4-xml php7.4-bcmath

# phpmyadmin installation
apt install -y phpmyadmin

# # Use taskel
# apt install -y tasksel
# tasksel install lamp-server