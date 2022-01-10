#!/bin/bash
# Author: Rhytham Shiroya <rshiroya@uncc.edu>
# Description: 
for value in {1..5}
 do
 echo "The current value is $value"
 done
whileCount=0
while [ $whileCount -lt 10 ]
do
echo "The current count is $whileCount"
((whileCount++))
done
untilCount=10
until [ $untilCount -eq 0 ]
 do
 echo "T-minus $untilCount"
 ((untilCount--))
done
echo "Blast off!"
for value in {0..20..2}
do
 echo "Count is now $value"
done