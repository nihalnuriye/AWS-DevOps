#!/bin/bash

read -p "input first number: " first_number
read -p "input second number: " second_number
read -p "select an math operation:
 1 - addition
 2 - subtraction
 3 - multiplication
 4 - division
 " operation

case $operation in 
   "1")
      echo "result= $(( $first_number + $second_number))"
    ;;
    "2")
      echo "result= $(( $first_number - $second_number))"
    ;;
    "3")
      echo "result= $(( $first_number * $second_number))" 
    ;;
    "4")
      echo "result= $(( $first_number / $second_number))"
    ;;
    *)
      echo "Wrong choice, choose from 1-4" 
    ;;
esac    