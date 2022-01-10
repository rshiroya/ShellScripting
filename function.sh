#! /bin/bash
# Author: Rhytham Shiroya <rshiroya@uncc.edu
# Description: The function should accept two arguments. The first will 
# be the name of a new container to create and the second should be the 
# IP address of that container. After you have filled in the missing \

# pieces in the function body, you should be able to run the script and 
# then see that a new container with the name test and the IP address  
# 172.16.31.254. 

create_container() {
 lxc init ubuntu:20.04 "$1" < /dev/null
 lxc network attach lxdbr0 "$1" eth0
 lxc config device set "$1" eth0 ipv4.address "$2"
 lxc start "$1"
}
echo "Testing the function create_container"
create_container test 172.16.31.254