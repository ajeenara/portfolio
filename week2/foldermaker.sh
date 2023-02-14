#!/bin/bash

#get name of folder to be created
read -p "Type the name of the folder to create: " folderName

#creates new folder
mkdir $folderName
echo "Folder $folderName succesfully created"

exit 0