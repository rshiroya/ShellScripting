#!/bin/bash
# Author: Rhytham Shiroya <rshiroya@uncc.edu>
# Description: This script will accept three arguments and use them to complete a command, chmod in this case.
# Arguments here will take the form of something like the following: ./addperm.sh <arg1> <arg2> <arg3>
command="chmod $1+$2 $3"
echo "Adding permissions with the following command: ${command}"
$command
