#!/bin/bash
apk add net-tools
apk add socat
apk add nmap
apk add mtr
ip route del default
ip route add default via 192.168.57.2
# ip route add default gw 192.168.57.2
rc-update add staticroute