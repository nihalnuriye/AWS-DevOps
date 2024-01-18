#!/bin/bash

read -p "enter the filename: " filename

if [[ -z "$(ls -al /home/ec2-user/Session-6-conditional-statements/conditional-statements | grep $filename)" ]]
then
 touch $filename
 echo "file is created"
else
 echo "file already exists" 
fi 