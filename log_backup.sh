#!/bin/bash
# Script Name:                  Clearing logs
# Author:                       Michael Plaskett    
# Date of latest revision:      09/01/2023
# Purpose:                     mannaging system log file
# Resource:                     Challenge05.png


# Print the file size of the log files before compression
log_file="/var/log/syslog"
wtmp_file="/var/log/wtmp"

original_size_syslog=$(du -h "$log_file" | awk '{print $1}')
original_size_wtmp=$(du -h "$wtmp_file" | awk '{print $1}')

echo "File size of $log_file before compression: $original_size_syslog"
echo "File size of $wtmp_file before compression: $original_size_wtmp"

# Compress the contents of the log files to a backup directory
backup_dir="/var/log/backups"
mkdir -p "$backup_dir"
timestamp=$(date +%Y%m%d%H%M%S)

gzip -c "$log_file" > "$backup_dir/syslog-$timestamp.zip"
gzip -c "$wtmp_file" > "$backup_dir/wtmp-$timestamp.zip"

# Clear the contents of the log files
cat /dev/null > "$log_file"
cat /dev/null > "$wtmp_file"

# Print the file size of the compressed files
compressed_size_syslog=$(du -h "$backup_dir/syslog-$timestamp.zip" | awk '{print $1}')
compressed_size_wtmp=$(du -h "$backup_dir/wtmp-$timestamp.zip" | awk '{print $1}')

echo "File size of syslog-$timestamp.zip: $compressed_size_syslog"
echo "File size of wtmp-$timestamp.zip: $compressed_size_wtmp"

# Compare the size of the compressed files to the size of the original log files
compression_ratio_syslog=$(echo "scale=2; $(du -b "$log_file" | awk '{print $1}') / $(du -b "$backup_dir/syslog-$timestamp.zip" | awk '{print $1}')" | bc -l)
compression_ratio_wtmp=$(echo "scale=2; $(du -b "$wtmp_file" | awk '{print $1}') / $(du -b "$backup_dir/wtmp-$timestamp.zip" | awk '{print $1}')" | bc -l)