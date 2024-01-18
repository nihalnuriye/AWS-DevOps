#!/bin/bash

read -p "input a number:" number

if [[ $number -gt 10 ]]
then
 echo "number is bigger than 10"
 if (( $number % 2 == 1 ))
 then 
  echo "and is an odd number"
 else
  echo "and is an even number"
  fi
else
 echo "it is not bigger than 10"
fi