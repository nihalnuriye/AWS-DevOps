#!/bin/bash
#
# This script creates a new user on the local system.
# You will be prompted to enter the username (login), the person name, and a password.
# The username, password, and host for the account will be displayed.
# sed -i -e 's/\r$//' $0
# Make sure the script is being executed with superuser privileges.
if [[ $UID -ne 0 ]]
then
 echo " please run this script as root or superuser privileges"
 exit 1
fi
# Get the username (login).
read -p "write your username: " USERNAME
# Get the real name (contents for the description field).
read -p "write your real name: " REALNAME
# Get the password.
read -sp "write your password: " PASSWORD
# Create the account.
useradd $USERNAME -c $REALNAME 2> /dev/null    #{$USERNAME} seklinde de yazilabilir
# Check to see if the useradd command succeeded.
# We don't want to tell the user that an account was created when it hasn't been.
if [[ $? -ne 0 ]]
then
 echo "this username is already taken. please select different username"
 exit 1
fi 
# Set the password.
echo $PASSWORD | passwd --stdin $USERNAME 

#works in ubuntu echo  $USERNAME:$PASSWORD | chpasswd

# Check to see if the passwd command succeeded.
if [[ $? -ne 0 ]]
then
 echo "something bad happened. please enter your password again"
 exit 1
fi 
# Force password change on first login.
passwd -e $USERNAME 
# Display the username, password, and the host where the user was created.
echo
echo "username: $USERNAME"
echo
echo "passwd: $PASSWORD"
# If you get bad interpreter error: "sed -i -e 's/\r$//' <script_name>" command first.

