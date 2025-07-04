#!/bin/bash

echo "====  SYSTEM HEALTH REPORT===="
echo "Generated on: $(date)"
echo "---------------------"
#uptime
echo -e "/n UPTIME:" 
uptime -p

echo -e "/n logged-in users:" 
who

echo -e "/n CPU load (1,5,15 min):" 
uptime| awk -F 'load average:' '{print $2}'

echo -e "/n memory usage:" 
free -h

echo -e "/n Disk Space usage:" 
df -h | grep '^/dev/'

echo -e "/n Top 5 Processes by memory usage:"
 ps aux --sort=-%mem | awk 'NR<=6{print $1, $2,$3,$4,$11}'

echo -e "/n Health check completed!!"
