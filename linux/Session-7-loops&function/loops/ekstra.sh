#!/bin/bash

for file in ls pwd date
do
 echo "-----$file-----"
 $file
 echo
done 