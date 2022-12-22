#!/bin/bash
# run as sudo -s
apk update
apk add --upgrade apk-tools &&
apk upgrade --available &&
apk add --update --no-cache python3 py3-pip &&
python3 -m ensurepip &&
pip3 install --no-cache --upgrade pip setuptools