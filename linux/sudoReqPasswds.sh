#!/bin/bash
if [ `whoami` != root ]; then
    echo Please run this script as root or using sudo
    exit
fi

sudo sed -i '/NOPASSWD: /d' /etc/sudoers
