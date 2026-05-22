#!/bin/bash
 #check the current user
  USER=$(id -u)
  if [$USER -ne 0]; then
    echo "run as root"
    exit 1
    fi
#check if the mysql is exists
mysql --version
if [ $? -eq 0]; then
echo "mysql is already installed"
exit 1
fi
#install the mysql
apt install mysql -y
