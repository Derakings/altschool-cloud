#!/bin/bash

#Let's count the files in a directory (takes absolute directory path as argument)



# Check if directory argument is provided
if [ -z "$1" ];
then
    echo "Usage: $0 /absolute/path/to/directory"
  exit 1
fi

DIR="$1"



# Check if directory exists and is a directory
if [ ! -d "$DIR" ];
then
    echo "Directory '$DIR' does not exist or is not a directory."
    exit 1
else
    echo "📁 '$DIR' exists✅"

fi


# To count how many regular files are in a directory

COUNT=$(ls -l "$DIR" | grep "^-" | wc -l)


# Check if COUNT is a number (greater or equal to zero)
if [ "$COUNT" -ge 0 ]; then
    echo "There are $COUNT file(s) in directory '$DIR' 📁."
    exit 0
else
    echo "Error counting files."
    exit 1
fi



