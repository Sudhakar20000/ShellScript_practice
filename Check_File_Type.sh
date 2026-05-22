#!/bin/bash
echo "can you enter the path to search"
read SEARCH_PATH
echo "enter the name of the file"
read NAME
Total_path="$SEARCH_PATH/$NAME"

if [ -f $Total_path ]; then
echo "it is a file"
elif [ -d $Total_path ]; then
echo "it is directory"
else
echo "please chck the path"
fi
