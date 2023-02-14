#!/bin/bash

##read -p "Please enter the name of the folder you would like to create: " foldername

#mkdir "$foldername"

#getting password from the user
read -rsp "Please enter your password:"  password  

#hashing password and storing into variable.
varHash=$(echo "$password" | sha256sum) 


#sha256sum -c secret.txt

file="secret.txt"

#getting content of secret.txt and storing in variable
varPass=$(cat "$file")

echo "$varHash"    

echo "$varPass"

#checking if the passwords matches then grant access otherwise deny access
if [ "$varHash" == "$varPass" ]; then

    echo " Access Granted"
    echo "$varHash"
exit 0
else 

    echo "Access Denied"
    echo "Good Bye"

    exit 1
fi
