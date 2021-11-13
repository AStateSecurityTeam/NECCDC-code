#!/bin/bash
if [ `whoami` != root ]; then
    echo Please run this script as root or using sudo
    exit
fi
cat /etc/passwd | grep sh | awk -F':' '{print $1}' 
