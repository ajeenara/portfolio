#!/bin/bash

#This function prints a given error

printError()
{

echo -e "\033[31mERROR:\033[0m $1"

}

#This function will get a value between the 2nd and 3rd arguments

getNumber()

{
    read -rp "$1"

    # checking if value entered is less than 42 display error

    while (( $REPLY < 42 )); do
    
            printError "Too low! "
        
    
        read -rp "$1"

    done

    # checking if value entered is greater than 42 display error

    while (( $REPLY > 42 )); do
    
            printError "Too High! "
        
    
        read -rp "$1"
    
    done

    # checking if value equal to 42 exit

    while (( $REPLY == 42 )); do
    
            echo -e "Corect "
            
        exit 1

    done
   

}

echo "This is the  start of the script"

getNumber "Please type a number between 1 and 100 : " 1 100

echo "Thank You!"

