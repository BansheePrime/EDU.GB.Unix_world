#!/usr/bin/env bash

tmux

# ctrl+b % split vertical
# ctrl+b ':set -g mouse on'
# 'ls /etc', 'ls /proc', 'ls /home' 

echo "File 1: $(cat /etc/timezone)" && echo "and ..." && echo "File 2: $(cat /etc/vconsole.conf)" 

man cat | awk "NR==4"
# 'quoting man on cat'

cat /etc/timezone > file1.txt && cat /etc/vconsole.conf > file2.txt

cat file2.txt >> file1.txt && cat file1.txt && mv file1.txt result.txt

echo "There is $(ls -A ~ | grep "^\." | wc -l) hidden files in my home dir."

for i in {1..3}; do touch geek_file$i.txt; done
mkdir geek_dir
mv geek_file*.txt ./geek_dir
tree -L 2 ./geek_dir/