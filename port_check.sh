#!/bin/bash

server_ip=0.0.0.0 # This is an example, change this to your server ip
server_status=1
while [ $server_status -eq 1 ]    # "-eq" is a comparison operator. it is used when comparing integers.
do
        nc -z $server_ip 11311    # " check the 11311 port is opened
        if [ $? -eq 0 ] ; then    # $? means the return value of the previously executed command 
                echo "Communication Success"
                server_status=0
        else
                echo "Communication Failed"
        fi
done

roscore
