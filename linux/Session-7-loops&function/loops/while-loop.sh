#!/bin/bash

number=0

while [[ $number -le 10 ]]
do
 echo $number
 ((number++))
 sleep 0.5
done
echo "now, number is $number" 