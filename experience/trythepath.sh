#!/bin/bash

sudo echo "welcome to phone_book"
 
pathOfPython=$PATH

# echo $pathOfPython

if [[ $pathOfPython == */Python.framework/* ]]; then
    echo "evroka"
else
    echo "noooooo"
fi

users

chmod -x trythepath.sh

username="ben"

echo $( echo $username && date ) >> end.txt