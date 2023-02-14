#!/bin/bash

vala=25
valb=20

# -eq demo
if [ "$vala" -eq "$valb" ]; then
    echo "The integers are the same"
else
    echo "The integers are not the same"
fi

# -ne demo
if [ "$vala" -ne "$valb" ]; then
    echo "The integers are not the same"
else
    echo "The integers are the same"
fi
# -gt demo
if [ "$vala" -gt "$valb" ]; then
    echo "val a is greater than val b"
else
    echo "val a is not greater than val b"
fi

