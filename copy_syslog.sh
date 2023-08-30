#!/bin/bash         
# Script Name:                  Date and Time
# Author:                       Michael Plaskett    
# Date of latest revision:      07/25/2023
# Purpose:                     To make an system log file

# Define the source and destination filenames
source_file="/var/log/syslog"
current_date=$(date +"%Y-%m-%d_%H-%M-%S")
destination_file="syslog_${current_date}.log"

# Copy the source file to the current working directory
cp "$source_file" "$destination_file"

echo "Copied $source_file to $destination_file"