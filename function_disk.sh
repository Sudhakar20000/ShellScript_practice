#!/bin/bash
echo "enter the directory"
read location
Value=$(awk -F " " '{print $5})
if [ $Value -gq 90 ]; then
echo "the disk usage is high"
else
echo "system under controle"
