#! /usr/bin/env bash
# Author: CCIExpert
# date: NOV 2021
# ____  ____  _  ________  _ ____  _____ ____  _____ 
#/   _\/   _\/ \/  __/\  \///  __\/  __//  __\/__ __\
#|  /  |  /  | ||  \   \  / |  \/||  \  |  \/|  / \  
#|  \__|  \__| ||  /_  /  \ |  __/|  /_ |    /  | |  
#\____/\____/\_/\____\/__/\\\_/   \____\\_/\_\  \_/  
#Ping Sweep

read -p "Please enter your first 3 octet of your prefix: " prefix

for ip in $(seq 1 254); do
     
     echo -e "$prefix.$ip "
     ping -c 1 $prefix.$ip
     
done
# to stop press ctrl+z

