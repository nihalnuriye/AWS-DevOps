#!/bin/bash

echo "numbers:"

for number in 0 1 2 3 4 5 6 7 8 9
do
 echo $number
 sleep 0.5
done


echo "names:"

for name in ugur adem chris aysel nihal aslan
do
 echo $name
 sleep 0.5
done
tail -1 /etc/passwd


echo "files in current folder:"

for file in $(pwd)/*
do
 echo $file
 sleep 0.5
done 