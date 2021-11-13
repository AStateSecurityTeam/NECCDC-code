#!/bin/bash​
if [ `whoami` != root ]; then
    echo Please run this script as root or using sudo
    exit
fi

echo "please enter new password"​

read passwd​

useradd  –m -s /bin/bash -p $(echo $passwd | openssl passwd -1 -stdin) potato​

echo "adding remote login detector"​

echo "wall someone logged into the $USER account from $SSH_CONNECTION" >> /home/potato/.bashrc​

echo "user potato made with given password"
exit
