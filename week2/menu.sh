#!/bin/bash

./passwordCheck.sh

RETURN=$?

#check for exit value equal to 0 from passwordCheck.sh
if [ $RETURN -eq 0 ];
then
    echo "The script was executed successfuly"
        
        #Display options on the screen
        echo -e "\e[00;31m 1. Create Folder\e[00m"
        echo -e "\e[00;31m 2. Copy Folder\e[00m"
        echo -e "\e[00;31m 3. Set a password\e[00m"

        # Do operation based on option selected above
        read -rp "Please select from the following options: " option

        # case statement to choose selection and execute files accordingly
        case "$option" in

            #creates new folder
	          "1")   ./foldermaker.sh ;;

            #copies from source folder to destination folder
            "2")   #./portfolio
                   /home/student/student/scripts/portfolio/foldercopier.sh ;;

            #sets password input by user
            "3")   ./setPassword.sh ;;

            #error message if wrong option is input
            *)     echo "Unknown shape '$option'."; exit 1 ;;
        esac

  exit 0
else
  echo "The script was NOT executed successfully and returned the code $RETURN"
  exit $RETURN
fi 



