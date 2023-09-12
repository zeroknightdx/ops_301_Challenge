#!/bin/bash         
# Script Name:                  Clearing logs
# Author:                       Michael Plaskett    
# Date of latest revision:      08/29/2023
# Purpose:                     To make an system log file
# Resource: 

# Define the backup directory
backup_dir="/var/log/backups"

# Create the backup directory if it doesn't exist
mkdir -p "$backup_dir"

# Get the current timestamp in the format YYYYMMDDHHMMSS
timestamp=$(date +"%Y%m%d%H%M%S")

# List of log files to process
log_files=(
  "/var/log/syslog"
  "/var/log/wtmp"
)

# Loop through the log files
for log_file in "${log_files[@]}"; do
    # Print the original file size
    original_size=$(stat -c %s "$log_file")
    echo "Original file size of $log_file: $original_size bytes"

    # Compress the log file with gzip
    compressed_file="$backup_dir/$(basename "$log_file")-$timestamp.zip"
    gzip -c "$log_file" > "$compressed_file"

    # Clear the contents of the original log file
    > "$log_file"

    # Print the size of the compressed file
    compressed_size=$(stat -c %s "$compressed_file")
    echo "Compressed file size of $compressed_file: $compressed_size bytes"
done

# Compare sizes
if [ "$original_size" -gt "$compressed_size" ]; then
    echo "The compressed file is smaller than the original log file."
elif [ "$original_size" -eq "$compressed_size" ]; then
    echo "The compressed file is the same size as the original log file."
else
    echo "The compressed file is larger than the original log file."
fi