#!/bin/bash

# Get name of folder to be copied
read -rp "Type the name of the folder you would like to copy: " folderName

# Check if the name is a valid directory
if [ -d "$folderName" ]; then

    # Get name of folder to be created
    read -rp "Type the name of the destination folder: " newFolderName

    # Copies source folder to destination folder
    cp -r "$folderName" "$newFolderName"
    
else

     # Otherwise, print an error

    echo "I couldn't find that folder"

fi
	