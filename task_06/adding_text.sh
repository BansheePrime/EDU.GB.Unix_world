#!/bin/bash
my_ip=$(ip -4 a show eth1 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')
# sed -i '$my_ip' '14i\'
# sed -i 's/\<h2\>ip\<\/h2\>/\<h3\>${my_ip}\<\/h3\>/' /var/www/localhost/htdocs/index.html
# awk -v ip="$my_ip" 'BEGIN {print ip}'
awk -v ip="$my_ip" 'NR==15{print ip}1' /var/www/localhost/htdocs/index.html.temp >> /var/www/localhost/htdocs/index.html