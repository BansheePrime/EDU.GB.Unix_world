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