#!/bin/bash

admin=aman

read -p "Enter your name: " username

#chech user is admin or not 

if [[ "${username}" != "${admin}" ]] && [[ $EUID != 0 ]] ; then
    echo "your not admin user, so be safe!"

else 
    echo "Your adminuser be careful "
    