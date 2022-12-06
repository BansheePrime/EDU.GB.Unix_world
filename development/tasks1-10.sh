#!/usr/bin/env bash
# Задание 1
tmux
# ctrl+b % split vertical
# ctrl+b ':set -g mouse on'
# 'ls /etc', 'ls /proc', 'ls /home' 

# Задание 2

echo "File 1: $(cat /etc/timezone)" && echo "and ..." && echo "File 2: $(cat /etc/vconsole.conf)" 

# Задание 3
# 'quoting man on cat'
man cat | awk "NR==4"
cat /etc/timezone > file1.txt && cat /etc/vconsole.conf > file2.txt
cat file2.txt >> file1.txt && cat file1.txt && mv file1.txt result.txt

# Задание 4
for i in {1..3}; do touch geek_file$i.txt; done
mkdir geek_dir
mv geek_file*.txt ./geek_dir
tree -L 2 ./geek_dir/
echo "There is $(ls -A ~ | grep "^\." | wc -l) hidden files in my home dir."

# Задание 5
cat /etc/* 2> errors.txt 
read -p "Press Enter to contunue." && grep 'Permission' errors.txt | wc -l

# Задание 6
tmux
vi kill.txt
ps aux | grep kill.txt | grep -v grep | awk '{print $2}'
kill $(ps aux | grep kill.txt | grep -v grep | awk '{print $2}')


# Задание 7
?

# Задание 8
mkdir photos
cd photos
for i in {2018..2023}; do mkdir geek_photos_$i; done
for i in {1..12}; do mkdir ./geek_photos_2018/0$i.month; done
tree -L 2
cp -r ./geek_photos_2018/* ./geek_photos_2019 
cp -r ./geek_photos_2018/* ./geek_photos_2020 
cp -r ./geek_photos_2018/* ./geek_photos_2021 
cp -r ./geek_photos_2018/* ./geek_photos_2022 
cp -r ./geek_photos_2018/* ./geek_photos_2023
tree -L 2

# Задание 9


# Задание 10
?