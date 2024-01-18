#!/bin/bash

read -p "input first number: " first_number
read -p "input second number: " second_number

PS3="select the operation: "

select operation in addition subtraction multiplication division exit
do 
 case $operation in 
  addition) 
      echo "result= $(( $first_number + $second_number))"
    ;;
    subtraction)
       echo "result= $(( $first_number - $second_number))"
    ;;
    multiplication)
       echo "result= $(( $first_number * $second_number))" 
       ;;
    division)
       echo "result= $(( $first_number / $second_number))"
    ;;
    exit)
       break
    ;;   
    *)
       echo "Wrong choice..." 
    ;;
  esac
done