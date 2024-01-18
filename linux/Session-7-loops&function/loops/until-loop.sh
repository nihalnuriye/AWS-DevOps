#!/bin/bash

number=1

until [[ $number -ge 10 ]]
do
 echo $number
 ((number++))
 sleep 0.5
done
echo "now, number is $number"