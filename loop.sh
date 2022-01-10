#! /bin/bash
# Author: Rhytham Shiroya <rshiroya@uncc.edu
# Description: a loop that iterates over the contents of a file and 
# prints each line of the file to the screen.

file=$1
declare -a data
if [[ -f "$file" ]]
then
 while IFS=$'\n' read -r text
 do
 data[i]="${text}"
 ((++i))
 done < $file
else
 echo -e "Invalid input $1. Please input correct filename"
 exit
fi
echo -e "Printing the contents of file $1:"
content=0
for content in "${data[@]}"
do
 echo "$content"
done
echo

