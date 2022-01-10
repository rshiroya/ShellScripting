#!/bin/bash
# Author: Rhytham Shiroya <rshiroya@uncc.edu>
# Description: a script named build_containers.sh that reads from a file 
# and creates containers. Below is an example of the input file, which 
# you can call containers.dat.

# And you will call it just like the loop script, e.g. 
# ./build_containers.sh containers.dat

set -u
greeting="Hello"
name=$1
if [[ -z $name ]]; then
 echo "You need to tell me your name!"
 echo " $0 <name>"
 exit -1
else
 echo "$greeting $name"
fi
i=0
while [[ $i < 4 ]]; do
echo "i is currently $i"
 i=$((i+1))
set +u
done
exit 0