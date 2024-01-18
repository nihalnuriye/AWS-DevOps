#!/bin/bash

read -p "enter your name: " name
read -p "enter your age: " age
read -p "your average life expectancy: " ale

if [[ $age -lt 18 ]]
then
 echo "Student. At least $((18 - $age)) years to become a worker"
fi

if [[ $age -ge 18 ]] && [[ $age -lt 65 ]] 
then 
 echo "Worker"
 if ((18<=$age<65))
 then 
  echo "$((65 - $age)) years to retire"
 fi
fi  

if [[ $age -ge 65 ]]
then 
 echo "Retired"
 if (($age<=$ale))
 then
  echo "$(($ale - $age)) years to die"
 elif (($age>=$ale))
 then 
  echo "!!! Already died !!!"
  sleep 1
  echo "!!! Already died !!!"
  sleep 2
  echo "!!! Already died !!!"
 fi
fi  