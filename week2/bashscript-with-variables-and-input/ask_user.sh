#!/bin/bash

current_date_time=$(date)
echo "Directory and File Finder Script"
echo "================================="
echo

echo "Welcome to files and directory finder"
echo "======================================"
echo "Enter your name: "
read user_name
echo 
echo "Now enter the name of the file or directory you would like to find: "
read file_name

echo
echo "Searching for '$file_name'.... please hold!"
sleep 10
echo 
cd /
found_file_or_directory=$(find | grep "$file_name" 2>/dev/null | head -n 1)
echo 

if [ -f "$found_file_or_directory" ]; then
   echo "$current_date_time";
   echo "=============================";
   echo
   echo "Hello $user_name, I found your $file_name file: ";
   echo "Here you go -> $found_file_or_directory";
elif [ -d "$found_file_or_directory" ]; then
   echo "$current_date_time";
   echo "=============================";
   echo
   echo "Hello $user_name, I found the $file_name directory: ";
   echo "Here you go -> $found_file_or_directory";
else
   echo "$current_date_time";
   echo "=============================";
   echo
   echo "Sorry $user_name, I couldn't find $file_name ";
   echo "Check the file or directory name and try again"

fi
echo
echo "======================================="
echo "Name: $user_name, file name: $file_name"
echo
echo "tada!!"
