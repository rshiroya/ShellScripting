#! /bin/bash
# Author: Rhytham Shiroya <rshiroya@uncc.edu
# Description: This next script can be tricky becuase it will intercept 
# the interrupt and stop signals (<ctrl>-c and <ctrl>-z) and echo a 

# simple message. When the program is run note the pid reported. In the 
#other terminal issue the following command:kill <nnnn>

trap "echo I am done" SIGINT SIGSTOP 20 24
echo "pid is $$"
while : ; do
  sleep 5
done
