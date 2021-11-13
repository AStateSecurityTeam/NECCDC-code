#!/bin/bash​
if [ `whoami` != root ]; then
    echo Please run this script as root or using sudo
    exit
fi

echo "wiping authorized keys for user $USER and root"​

echo "0" >.ssh/authorized_keys​

echo "0" > /root/.ssh/authorized_keys
exit
