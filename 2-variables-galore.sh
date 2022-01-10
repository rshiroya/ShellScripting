#!/bin/bash
# Author: Rhytham Shiroya <rshiroya@uncc.edu>
# Description: 
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