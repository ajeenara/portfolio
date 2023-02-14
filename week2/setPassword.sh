#!/bin/bash

#Getting password from user
read -rsp "Please enter your password:"  password  

#Hashes password and outputs it to secret.txt
echo  "$password" | sha256sum > secret.txt
echo "Password successfully updated."

exit 0