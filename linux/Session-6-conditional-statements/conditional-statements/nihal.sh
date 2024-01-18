#!/bin/bash

read -p "enter the filename: " filename

if [[ -n "$(ls -al /home/ec2-user/Session-6-conditional-statements/conditional-statements | grep $filename)" ]]
then
 echo "file already exists"
else
 touch $filename
 echo "file is created" 
fi 