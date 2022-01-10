#! /bin/bash
# Author: Rhytham Shiroya <rshiroya@uncc.edu
# Description: This script will check the length of an argument string. 
slen=$(expr "$1" : '.*')
echo $1 $slen
if [ $slen -lt 4 ] ; then
 echo "String too short"
elif [ $slen -gt 10 ] ; then
 echo "String too long"
else
 echo "Goldilocks"
fi
Slen1=$(expr "$2" : '.*')
echo $2 $slen1
if [ $slen1 -lt 4 ] ; then
 echo "String too short"
elif [ $slen1 -gt 10 ] ; then
 echo "String too long"
else
 echo "Goldilocks"
fi
