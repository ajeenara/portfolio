#!/bin/bash


echo "Hello"

read -rp "What is your name: " name

echo "Hello $name"

if [ $name = "Rob" ] || [ $name = "rob" ]; then

    echo "You are really good at coding"
else
    echo "I don't know you ..."
fi

exit 0