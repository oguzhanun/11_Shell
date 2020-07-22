#!/bin/bash

# Linux Plus - Industry Examples - 05/10/2020
# Excercise - User and groups
# Write a script that; 
# Creates a user account by asking user to enter a user name
# Prints error if user already exists
# Asks user to enter description for new user
# Adds the description to the new user account
# Prints message that user successfully created.
# Asks user to enter a group name
# If group name is empty script will do nothing.
# If given group name does not exist create a group
# Add user to the group
# Print message that user successfully added to the group
# Solution:
read -p "Enter the user name: " username
grep $username /etc/passwd
if [ $? -eq 0 ]
then
        echo "User already exists!"
        exit 1
fi
useradd $username
read -p "Enter a description for $username user: " desc
usermod -c "$desc" $username
echo "$username successfully created."
read -p "Enter the group name to add $username : " group
if [ $group ]
then
        grep $group /etc/group
        if [ $? -gt 0 ]
        then
                groupadd $group
        fi
        gpasswd -a $username $group
        echo "$username added to the group $group."
fi

# Excercise Delete old files
# Step 1: Write a script to delete files older than 10 days
# Step 2: Modify your script to get day reference from the first argument
# Solution

files=$(find . -mtime +$1 -name "*.txt")
for file in $files
do
        rm $file
        echo "$file was deleted!"
done

# Excercise - File watcher
# Write a script that checks whether clarusway.txt exists in the current directory.
# If file is found the script will delete the file and prints a message.
# Run the script on the background.
# Test the script
# Terminate the script

while :
do
        sleep 15
        echo "Checking file!Checking file!
        fc=$(find . -name "clarusway.txt" | wc -l)
        if [ $fc -gt 0 ]
        then
                rm clarusway.txt
                echo "clarusway.txt found and deleted"
        fi
done