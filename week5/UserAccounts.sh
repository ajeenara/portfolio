#!/bin/bash

awk 'BEGIN{

    FS=":";
    
        print"__________________________________________________________________________________________________________________________"
        print"|\033[34m Username\033[0m                     |\033[34mUserId\033[0m    |\033[34mGrouID\033[0m    |\033[34mHome\033[0m                                    |\033[34mShell\033[0m                    |";
        print"__________________________________________________________________________________________________________________________"
    } 
    {
        
    # do selection for all shell that is /bin/bash

    if ($7="/bin/bash")
        {
            printf("|\033[33m%-30s\033[0m|\033[35m%-10s\033[0m|\033[35m%-10s\033[0m|\033[35m%-40s\033[0m|\033[35m%-25s\033[0m|\n",$1 ,$3 , $4, $6 , $7);  
        }
    } 
    END{
        print("______________________________");
    }' passwd.txt