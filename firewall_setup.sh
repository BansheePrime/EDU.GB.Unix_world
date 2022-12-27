#!/bin/bash
ufw status verbose
ufw enable
iptables -A PREROUTING -t nat -i enp0s8 -p tcp --dport 8080 -j REDIRECT --to-port 80
# rc-update add ufw