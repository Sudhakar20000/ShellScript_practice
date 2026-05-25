#!/bin/bash
ALL_SUCCESS=0
ls /tmp
if [ $? -ne 0 ]; then 
 echo "Faled"
 ALL_SUCCESS=1
 exit 1
else 
 echo "success"
fi

ls /fakedir
if [ $? -ne 0 ]; then
 echo "Faled"
 ALL_SUCCESS=1
 exit 1
else
 echo "success"
 fi

ping -c1 google.com
if [ $? -ne 0 ]; then
 echo "Faled"
 ALL_SUCCESS=1
 exit 1
else
 echo "success"
 fi
exit $ALL_SUCCESS

