#!/bin/bash

read -p "input a number:" number

if [[ $number -gt 10 ]]
then 
 echo "the number is greater than 10"
elif [[ $number -lt 10 ]] 
then
 echo "the number is less than 10"
else
 echo "the number is equal to 10"
fi   