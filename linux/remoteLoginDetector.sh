#!/bin/bash
if [ 'id -u' -eq 0];
then
	echo "adding remote login detector to spudnik and root account"

        echo "wall someone logged into the $USER account from $SSH_CONNECTION" >> /home/spudnik/.bashrc
	echo "wall someone logged into the Root account from $SSH_CONNECTION" >> /root/.bashrc
	exit 0
else
	echo "please run this program in sudo mode"
	exit 1
fi
