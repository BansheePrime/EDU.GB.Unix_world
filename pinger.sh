#!/usr/bin/env bash

if ping -q -c 2 192.168.60.11 2>&1 > /dev/null ; then
    echo "192.168.60.11 aka lab is OK"
else
    echo "lab ping FAILED"
fi

if ping -q -c 2 192.168.60.12 2>&1 > /dev/null ; then
    echo "192.168.60.12 aka web is OK"
else
    echo "web ping FAILED"
fi