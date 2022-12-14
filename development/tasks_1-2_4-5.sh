#!/usr/bin/env bash
# Task 1
# Delete empty lines
sed '/^$/d' < homework4_data.txt > result.txt 

# Task 1
# Change lowercase to uppercase
tr '[:lower:]' '[:upper:]' < homework4_data.txt > result.txt

# Task 1
# commands
tmux
(см скриншоты)

# Task 2
(см скриншоты)

# Task 3
# WIP


# Task 4*
# Logging du per user
# script
date -I >> ./du.log
du -d 1 -h /home >> ./du.log

# commands
cron -e
0 0   *   *   *   /root/du_per_user_daily.sh

# Task 5*
# ownersort.sh
#!/usr/bin/env bash
for file in ./*; do
    
    OWNERNAME=$(stat -c '%U' $file)
    
    if [ -d $OWNERNAME ] 
    then
        echo "Directory $OWNERNAME exists." 
    else
        echo "Error: Directory $OWNERNAME does not exists."
        mkdir $OWNERNAME
    fi

    cp -p $file $OWNERNAME
    echo "Copying $file to $OWNERNAME directory."

done