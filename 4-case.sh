#!/bin/bash
# Author: Rhytham Shiroya <rshiroya@uncc.edu>
# Description: 
#!/bin/bash
if [[ -z $1 ]]
then
 echo "usage: $0 <start|stop|restart|reload>"
 exit -1
fi
case "$1" in
'start' )
 echo "Starting process"
 ;;
'stop' )
 echo "Stopping process"
 ;;
 'restart' )
 echo "Restarting process"
 ;;
 'reload' )
 echo "Reloading process"

 ;;
 * )
 echo "Unrecognized commad $1"
 exit 255
 ;;
 esac
exit 0