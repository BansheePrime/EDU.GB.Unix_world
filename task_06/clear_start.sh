#!/bin/bash
cat /dev/null > /var/www/localhost/htdocs/index.html
cp -f /vagrant/apache_index.html /var/www/localhost/htdocs/index.html.temp
/vagrant/adding_text.sh