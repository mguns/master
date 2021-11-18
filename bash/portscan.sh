#!/bin/bash
# specify hostname or ip 
read -p "please specify ip_addr: " hostname    
#read -p "please specify port range" port
for port in {1..65535};do
# 2 is sterr and output just shifted to null 
# followed by simple loop to print hostname + port
    2>/dev/null echo > /dev/tcp/$hostname/$port
       if [ $? == 0 ] 
         then
            {
            echo " $port is open" >> $hostname.portscanner.txt
            }
        else 
            {
                echo " $port closed" >> $hostname.portscanner.txt
             }
       fi
done