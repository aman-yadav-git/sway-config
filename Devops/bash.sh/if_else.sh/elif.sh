#!/bin/bash

read -p "Enter your number " num

if [[ $num -gt 5 ]]; then
echo "num is biger then 5"
elif [[ $num -lt 5 ]]; then
    echo "num is less then 5"
    else 
        echo "num is 5"

    
fi
