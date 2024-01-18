#!/bin/bash

if [[ "a" = "a" ]];then
 echo "they are same"
fi

if [[ "a" != "b" ]]
then 
 echo "they are not same"
fi 

if [[ -z "" ]];then
 echo "it is empty"
fi 

if [[ -n "text" ]]
then
 echo "it is not empty"
fi 

if [[ -z "$(ls -al /home/ec2-user/Session-6-conditional-statements/conditional-statements | grep 'file-operators.sh')" ]]
then 
 echo "there is no file named like that"
fi 