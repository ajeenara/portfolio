#!/bin/bash

#read -p "Please enter the name of the folder you would like to create: " foldername

#mkdir "$foldername"

#Getting password from user
read -rsp "Please enter your password:"  password  

#Hashes password and outputs it to secret.txt
echo  "$password" | sha256sum > secret.txt
echo "Password successfully updated."

exit 0

