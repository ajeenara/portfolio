#!/bin/bash

#UV Index Recommendation Calculator
    # 0-2 Low (Minimal protection Required)
    # 3-7 Moderate to High (Standard protection Required)
    # +8 Very High to Extreme (full protective measures Required)

    read -p "Enter a UV index value from 0 to 11: " uvvalue

    if [ "$uvvalue" -le 2 ]; then 
        echo "UV level is low. Minimal Protection Required."
    elif [[ "$uvvalue" -gt 3 ]] && [[ "$uvvalue" -le 7 ]]; then
        echo "UV level is Moderate to High. Standard Protection Required"
    elif [[ "$uvvalue" -gt 8 ]] && [[ "$uvvalue" -le 11 ]]; then
        echo "UVlevel is High. Full Protection Required."
    else    
        echo "Invalid UV index value entered."
    fi
     