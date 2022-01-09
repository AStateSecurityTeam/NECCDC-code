#!/bin/bash​
if [ `whoami` != root ]; then
    echo Please run this script as root or using sudo
    exit
fi

echo "please enter new password"​

read -s -p passwd​

echo "please confirm password"

read -s -p cpasswd

if [[ passwd -eq cpasswd ]]

then

useradd  –m -s /bin/bash -p $(echo $passwd | openssl passwd -1 -stdin) potato​

echo "adding remote login detector"​

echo "wall someone logged into the $USER account from $SSH_CONNECTION" >> /home/potato/.bashrc​

echo "user potato made with given password"

exit 0
else

echo "passwords do not match. please restart program"

exit 1

fi
