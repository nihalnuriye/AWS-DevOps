#!/bin/bash

read -p "input a number:" number

if [[ $number -ge 10 ]]
then
 echo "the number is bigger"
else
 echo "the number is smaller than 10"
fi  