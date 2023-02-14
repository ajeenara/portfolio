#!/bin/bash
figlet "Calculator"
#User input
echo "Enter 2 numbers : "
read -r a 
read -r b

#Colour Declaration
BLUE='\033[0;34m'
GREEN='\033[0;32m'
RED='\033[0;31m'
PURPLE='\033[0;35m'
NOCOLOR='\033[0m'

#Select operation
echo "Choose from the following : "
echo -e "${BLUE} 1. Addition"
echo -e "${GREEN} 2. Subtraction"
echo -e "${RED} 3. Multiplication"
echo -e "${PURPLE} 4. Division${NOCOLOR}"

#echo -e "I ${RED}love${NOCOLOR} Linux"

read ch


case $ch in

 1)res=$(echo "$a+$b" | bc)
 echo -e "Result: ${res}"
;;   
 2)res=$(echo "$a-$b" | bc)
 echo -e "Result: ${res}"
;;
 3)res=$(echo "$a*$b" | bc)
 echo -e "Result: ${res}"
;;
 4)res=$(echo "scale=2;  $a/$b" | bc)
 echo -e "\033[0;33m Result: ${res}"
;;
 *)
 echo "You have made a wrong choice"
esac
 
 
