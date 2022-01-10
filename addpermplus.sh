#!/bin/bash
# Author: Rhytham Shiroya <rshiroya@uncc.edu>
# Description : This script will accept three arguments and use them to complete a command, chmod in this case.
# Arguments here will take the form of something like the following: ./addperm.sh <arg1> <arg2>
# It also has a simple check to verify the right number of arguments have been passed and exiting if not.
if [[ $# -ne 3 ]]; then
  echo "Need 3 parameters"
  exit 1
fi
command="chmod $1+$2 $3"
echo "Adding permissions with the following command: $command"
$command
