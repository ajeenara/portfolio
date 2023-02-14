#!/bin/bash



#cat filenames.txt | while read line
#do
#echo $line
#done

#Colour Declaration
BLUE='\033[0;34m'
GREEN='\033[0;32m'
RED='\033[0;31m'
NOCOLOR='\033[0m'

#Check for Directory
echo -e "${BLUE} This is a directory ${NOCOLOR}"
grep "./" filenames.txt

# Check for filenames ending .sh
echo -e "${GREEN} That file exists ${NOCOLOR}"
grep -Ei "\\.([A-z0-9])+$" filenames.txt
#grep -Ei "\.sh$" filenames.txt




