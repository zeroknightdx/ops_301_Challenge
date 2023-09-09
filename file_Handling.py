# Script Name:                Python’s file handling
# Author:                       Michael Plaskett    
# Date of latest revision:      09/08/23
# Purpose:          TO grasp the fundamental of generating log files or working with CSV or JSON data files
# Resource: 

# Create a new .txt file and append three lines
with open('example.txt', 'w') as file:
    file.write("This is the first line.\n")
    file.write("This is the second line.\n")
    file.write("This is the third line.\n")

# Open the file again to read the first line and print it
with open('example.txt', 'r') as file:
    first_line = file.readline()
    print("First Line:", first_line)

# Delete the .txt file
import os
if os.path.exists('example.txt'):
    os.remove('example.txt')
    print("File 'example.txt' deleted.")
else:
    print("File 'example.txt' does not exist.")