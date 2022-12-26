#!/bin/bash
apk add net-tools
apk add mtr
ip route del default
ip route add default via 192.168.58.2
# ip route add default gw 192.168.58.2
rc-update add staticroute