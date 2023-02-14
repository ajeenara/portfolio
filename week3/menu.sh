#!/bin/bash

./passwordCheck.sh

RETURN=$?

#check for exit value equal to 0 from passwordCheck.sh
if [ $RETURN -eq 0 ];
then
    #echo "The script was executed successfuly"
        
        #Display options on the screen
        echo -e "\e[00;31m 1. Create Folder\e[00m"
        echo -e "\e[00;32m 2. Copy Folder\e[00m"
        echo -e "\e[00;33m 3. Set a password\e[00m"
        echo -e "\e[00;34m 4. Calculator\e[00m"
        echo -e "\e[00;35m 5. Create Week Folder\e[00m"
        echo -e "\e[00;36m 6. Check Filename\e[00m"
        echo -e "\e[00;30m 7. Download a file\e[00m"
        echo -e "\e[00;39m 8. Exit\e[00m"

        # Do operation based on option selected above
        read -rp "Please select from the following options : " option

        # case statement to choose selection and execute files accordingly
        case "$option" in

            #creates new folder
	          "1")   /home/student/student/scripts/portfolio/week3/foldermaker.sh ;;

            #copies from source folder to destination folder
            "2")   #./portfolio
                   /home/student/student/scripts/portfolio/foldercopier.sh ;;

            #sets password input by user
            "3")   /home/student/student/scripts/portfolio/week3/setPassword.sh ;;
            
            #use calculator
            "4")   /home/student/student/scripts/portfolio/week3/calculator.sh ;;

            # create week folders
            "5")   ./megafoldermaker.sh ;;

            #check filename
            "6")   /home/student/student/scripts/portfolio/week3/filenames.sh ;;

            #Download a file
            "7")   /home/student/student/scripts/portfolio/week3/internetDownloader.sh ;;

            #Exit
            "8")   exit 0 ;;


            #error message if wrong option is input
            *)     echo "You have selected the wrong option '$option'."; exit 1 ;;
        esac

  exit 0
else
  #echo "The script was NOT executed successfully and returned the code $RETURN"
  exit $RETURN
fi 



