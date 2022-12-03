#!/usr/bin/env bash

if ping -q -c 2 192.168.61.20 2>&1 > /dev/null ; then
    echo "192.168.61.20 aka server is OK"
else
    echo "server ping FAILED"
fi

if ping -q -c 2 192.168.61.21 2>&1 > /dev/null ; then
    echo "192.168.61.21 aka client is OK"
else
    echo "client ping FAILED"
fi