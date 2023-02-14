#!/bin/bash

echo "Hello"

read -rp "What is your name: " name

echo "Hello $name"

if [ $name = "Rob" ] || [ $name = "rob" ]; then

    echo "You are really good at coding"
else
    echo -e "\033[31m[I don't know you ...]\033[0m"
    
fi


read -p 'The prompt text goes here: ' var


echo -e '\033[32m[This is green]\033[0m'
echo -e '\033[35m[This is purple]\033[0m'
echo -e '\033[30m[This is black]\033[0m'
echo -e '\033[33m[This is brown]\033[0m'
echo -e '\033[34[This is blue]\033[0m'
echo -e '\033[36m[This is cyan]\033[0m'
echo -e '\033[31m[This is red]\033[0m'