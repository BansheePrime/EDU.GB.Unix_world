#!/usr/bin/env bash
# Task 3
# 
mkdir -p 20{10..17}/{01..12}

for directory in $(find ./ -mindepth 2 -type d); do
    echo $(touch $directory$(tr -dc A-Za-z0-9 </dev/urandom | head -c 12).txt)
done

for file in $(find ./ -mindepth 2 -type f); do
    echo $($file >> $file)
done
