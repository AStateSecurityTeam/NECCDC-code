#!/bin/bash​
Green='\033[0;32m'
NC='\033[0m'
Red='\033[0;31m'
if [ `whoami` != root ]; then
    echo Please run this script as root or using sudo
    exit
fi

echo "please enter new password"​

read -s newPasswd
echo "please confirm password"

read -s cpasswd 
if [ $newPasswd == $cpasswd ];
then

	useradd -u 12345 -g wheel -m -s /bin/bash -p $(echo $newPasswd | openssl passwd -1 -stdin) spudnik

	echo "adding remote login detector"​

	sudo echo "wall someone logged into the $USER account from $SSH_CONNECTION" >> /home/spudnik/.bashrc​

	echo -e "${Green}user spudnik made with given password ${NC}"

	exit 0
else

	echo -e "${Red}passwords do not match. please restart program ${NC}"

	exit 1

fi
