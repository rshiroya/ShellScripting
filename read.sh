#!/bin/bash
# Author: Rhytham Shiroya <rshiroya@uncc.edu>
# Description: This script below will read from the keyboard and do an action based on the input. 
echo "Existing filename:"
read filen
echo "New filename:"
read new_filen
command="cp -i $filen $new_filen"
echo "executing $command:"
$command
