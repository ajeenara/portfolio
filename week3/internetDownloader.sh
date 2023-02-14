#!/bin/bash


#Ask user URL o download
read -p "Please type the URL of file to download or type 'exit' to quit : " url

#Check if input = exit then loop
if [ $url != 'exit' ]; then

#Ask user destination where to download
read -p "Type location where you would like the file to download to :" destination

#Download file
wget -p $destination $url

fi
