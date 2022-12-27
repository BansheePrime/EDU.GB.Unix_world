#!/bin/bash
# use with sudo -s

# Installing NGINX for ubuntu 20.04
echo "deb https://nginx.org/packages/ubuntu/ $(lsb_release -cs) nginx" >> /etc/apt/sources.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ABF5BD827BD9BF62
cp -f /vagrant/nginx /etc/ufw/applications.d/
cp -f /vagrant/index.html /usr/share/nginx/html/
apt update
apt install nginx
systemctl start nginx
systemctl enable nginx

#Adding firewall settings
ufw allow 'OpenSSH'
ufw allow 'Nginx full'

# DO NOT FORGET to say: ufw enable