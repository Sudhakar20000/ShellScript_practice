#!/bin/bash

echo "Give the name of the file:"
read file

# Log file for errors
log="/root/error.log"

# Search entire filesystem for the file, redirect permission errors to log
found=$(find / -type f -name "$file" 2>>"$log")

# Check if any file was found
if [ -n "$found" ]; then
    echo "File exists."
    echo "Locations:"
    echo "$found"
else
    echo "File does not exist."
fi