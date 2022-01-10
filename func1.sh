#! /bin/bash
# Author: Rhytham Shiroya <rshiroya@uncc.edu
# Description: Here, the first argument is the target set of permission 
# bits (user, group, other, or all). The second argument is whether we # are adding (a) or removing (r) the permission. The third is what # permission (read, write, or execute). The fourth argument is a file or # directory to modify.

if [[ $# -ne 4 ]]; then
echo "Needs 4 parameters"
exit 1
fi
if [[ ($1 != "u") && ($1 != "g") && ($1 != "o") && ($1 != "a") ]]
then
 echo Parameter 1 is "$1"
 echo Please enter parameter1 as u, g, o, or a
exit 1
fi
if [[ ($2 != "a") && ($2 != "r") ]]
then
 echo Parameter 2 is :2
 echo Please enter parameter 2 as a or r
fi
if [[ ($3 != "r") && ($3 != "w") && ($3 != "x") ]]
then
 echo Parameter 3 is :3
 echo Please enter parameter 3 as r, w, or x
fi
if [[ ($1 == "u" || "g" || "o" || "a") && ($2 == "a") && ($3 == "r"
|| "w" || "x") ]]
then
echo "chmod "$1"+"$3" "$4""
command="chmod "$1"+"$3" "$4""
$command
fi
if [[ ($1 == "u" || "g" || "o" || "a") && ($2 == "r") && ($3 == "r"
|| "w" || "x") ]]
then
echo "chmod "$1"-"$3" "$4""
command="chmod "$1"-"$3" "$4""
$command
fi