#!/bin/bash
#check if argument is passed

if [ -z "$1" ]; 
then
    echo "Usage: $0 <enter filename>❗"
    exit 1
fi


file="$1"

# Check if the file exists
if [ ! -e "$file" ];
then
    echo "Oops ❌, '$file' is not a valid file."
    exit 1
else
    echo "The file exists✅"
    exit 0
fi
