#!/bin/bash

read -p "input a file_name: " file_name

if [[ -e $file_name ]]
then
 echo "the file already exists"
else
 touch "$file_name"
 echo "the file is created"
fi   