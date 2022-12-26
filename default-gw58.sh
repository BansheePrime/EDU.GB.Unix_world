#!/bin/bash
apk add net-tools
apk add mtr
apk add ufw
ip route del default
ip route add default via 192.168.58.2
# ip route add default gw 192.168.58.2
rc-update add staticroute