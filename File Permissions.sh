#!/bin/bash
# Script Name:                  File Permissions
# Author:                       Michael Plaskett    
# Date of latest revision:      08/30/2023
# Purpose:          To make changes to directorie file permissions
# Resource: 
# Prompt user for input directory path
read -p "Enter directory path: " dir_path

# Prompt user for input permissions number
read -p "Enter permissions number (e.g., 777): " perms_num

# Navigate to the specified directory
cd "$dir_path" || exit

# Change permissions for all files in the directory
chmod -R "$perms_num" *

# Print directory contents and new permissions settings
echo "Directory contents:"
ls -l

echo -e "\nNew permissions settings:"
ls -l | awk '{print $1, $9}'