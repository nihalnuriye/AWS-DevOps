#! /bin/bash

read -p "enter your name: " name
read -sp "enter your password:" password

if [[ $name = $(whoami) ]] && [[ $password = Aa1234 ]]
then
 echo -e "\nwelcome $(whoami)"
else
 echo -e "\nit is wrong account"
fi  