#!/bin/bash
apk add net-tools
# echo "net 10.200.200.0 netmask 255.255.255.0 gw 192.168.200.12" >> /etc/route.conf
ip route del default
ip route add default via 192.168.57.1
# ip route add default gw 192.168.57.1
rc-update add staticroute
