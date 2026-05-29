#!/bin/bash

Source_Dir=$1
Dest_Dir=$2
Days=${3:-14}

if [ -z "$Source_Dir" ] || [ -z "$Dest_Dir" ]; then
    echo "Source or Destination argument is missing"
    echo "Usage: $0 <source-dir> <destination-dir> [days(optional default=14)]"
    exit 1
fi

if [ ! -d "$Source_Dir" ]; then
    echo "Source directory does not exist"
    exit 1
fi

if [ ! -d "$Dest_Dir" ]; then
    echo "Destination directory does not exist"
    exit 1
fi

FILES=$(find "$Source_Dir" -type f -name "*.log" -mtime +"$Days")

if [ -z "$FILES" ]; then
    echo "No files older than $Days days"
    exit 0
fi

TIME_STAMP=$(date '+%Y-%m-%d_%H-%M-%S')

ARCHIVE_FILE="$Dest_Dir/$TIME_STAMP-logs.tar.gz"

tar -czvf "$ARCHIVE_FILE" $FILES

if [ $? -eq 0 ]; then
    echo "Archive created successfully"

    while IFS= read -r FILE
    do
        echo "Removing file: $FILE"
        rm -f "$FILE"
    done <<< "$FILES"

else
    echo "Archive creation failed"
fi