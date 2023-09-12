# Script Name:                psutil
# Author:                       Michael Plaskett    
# Date of latest revision:      09/11/23
# Purpose:          TO grasp the fundamental of Psutil
# Resource:        Challenge10.png

import psutil

# Get CPU times
cpu_times = psutil.cpu_times()

# Extract specific CPU times
user_time = cpu_times.user
kernel_time = cpu_times.system
idle_time = cpu_times.idle
priority_user_time = cpu_times.nice
io_wait_time = cpu_times.iowait
interrupt_time = cpu_times.irq
soft_interrupt_time = cpu_times.softirq
virtual_system_time = cpu_times.steal
guest_time = cpu_times.guest

# Print the fetched information
print(f"Time spent by normal processes executing in user mode: {user_time} seconds")
print(f"Time spent by processes executing in kernel mode: {kernel_time} seconds")
print(f"Time when system was idle: {idle_time} seconds")
print(f"Time spent by priority processes executing in user mode: {priority_user_time} seconds")
print(f"Time spent waiting for I/O to complete: {io_wait_time} seconds")
print(f"Time spent for servicing hardware interrupts: {interrupt_time} seconds")
print(f"Time spent for servicing software interrupts: {soft_interrupt_time} seconds")
print(f"Time spent by other operating systems running in a virtualized environment: {virtual_system_time} seconds")
print(f"Time spent running a virtual CPU for guest operating systems: {guest_time} seconds")