#!/bin/bash

server_ip=192.168.1.1 # example
server_status=1
while [ $server_status -eq 1 ]
do
        ping -c 1 -w 1 $server_ip > /dev/null
        if [ $? -eq 0 ] ; then
                echo "Communication Success"
                server_status=0
        else
                echo "Communication Failed"
        fi
done

echo "Execute Next Command"
