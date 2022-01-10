#!/bin/bash
# Author: Rhytham Shiroya <rshiroya@uncc.edu>
# Description: 
#!/bin/bash
echo -n "Do you agree with this? [yes or no]: "
read yno
case $yno in
 [yY] | [Yy][Ee][Ss] )
 echo "Agreed"
 ;;
 [nN] | [Nn][Oo] )
 echo "Not agreed, you can't proceed the installation";
 exit 255
 ;;
 *)
 echo "Invalid input"
 exit 254
 ;;
esac