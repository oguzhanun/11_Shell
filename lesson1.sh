#!/bin/bash

read -p "enter the username: " username

grep $username /etc/passwd

if [ $? -eq 0 ]; then

    echo "username already exists"
    exit 1
fi

useradd $username

read -p "enter a description for username: " desc

# -c is for description. the command below adds a description to the user
usermod -c "$desc" $username

read -p "enter the group: " group

if [ $group ]; then
    grep $group /etc/group
    if [ $? -ne 0]; then
        groupadd $group
    fi

    gpasswd -a $username $group

fi


