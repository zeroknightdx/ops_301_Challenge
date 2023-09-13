# Script Name:                psutil
# Author:                       Michael Plaskett    
# Date of latest revision:      09/11/23
# Purpose:          TO grasp the fundamental of Psutil
# Resource:        
import psutil

# Get CPU times
cpu_times = psutil.cpu_times()

# Print the fetched information
print(f"User Mode CPU Time: {cpu_times.user} seconds")
print(f"Kernel Mode CPU Time: {cpu_times.system} seconds")
print(f"Idle Time: {cpu_times.idle} seconds")
print(f"Priority User Mode CPU Time: {cpu_times.nice} seconds")
print(f"I/O Wait Time: {cpu_times.iowait} seconds")
print(f"Hardware Interrupt Time: {cpu_times.irq} seconds")
print(f"Software Interrupt Time: {cpu_times.softirq} seconds")
print(f"Virtual System Time: {cpu_times.steal} seconds")
print(f"Guest OS Time: {cpu_times.guest} seconds")