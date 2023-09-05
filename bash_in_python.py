#!/bin/bash         
# Script Name:                 Bash & python
# Author:                       Michael Plaskett    
# Date of latest revision:      09/05/23
# Purpose:                     just satrting to use python 
# Resource: 
import os

# Execute the "whoami" command
whoami_output = os.popen('whoami').read()

# Execute the "ip a" command
ip_a_output = os.popen('ip a').read()

# Execute the "lshw -short" command
lshw_output = os.popen('lshw -short').read()

# Print the outputs of the Bash commands
print("Output of 'whoami' command:")
print(whoami_output)

print("\nOutput of 'ip a' command:")
print(ip_a_output)

print("\nOutput of 'lshw -short' command:")
print(lshw_output)