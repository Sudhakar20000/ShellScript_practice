#!/bin/bash
ALL_SUCCESS=0
ONE_Fale=1
ls /tmp
if [ $? -ne 0 ]; then 
 echo "Faled"
 echo $ONE_Fale
 exit 1
else 
 echo "success"
fi

ls /fakedir
if [ $? -ne 0 ]; then
 echo "Faled"
 echo $ONE_Fale
 exit 1
else
 echo "success"
 fi

ping -c1 google.com
if [ $? -ne 0 ]; then
 echo "Faled"
 echo $ONE_Fale
 exit 1
else
 echo "success"
 fi
echo $ALL_SUCCESS
exit