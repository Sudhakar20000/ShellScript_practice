#!/bin/bash
Source_Dir=$1
Days=${2:-14}
if [ -z "$Source_Dir" ]; then
 echo "give the parameter USAGE:: $0 <source-dir> [days(optional default to 14)]""
 exit 1
fi

if [ ! -d "$Source_Dir" ]; then
 echo "the given $Source_Dir directory does not exists"
 exit 1
fi
FILES=$(find "$Source_Dir" -type f -name *.log -mtime +$Days)

while IFS = read FILE
do
  echo "deleting $FILE"
 rm -rf "$FILE"
done <<< "$FILES"