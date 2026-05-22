#!/bin/bash
echo " enrt a number:"
read NUM
if [ $(($NUM%2)) -eq 0]; then 
echo "the number divisible by 2"
else 
echo " the number is not divisible by 2"
fi