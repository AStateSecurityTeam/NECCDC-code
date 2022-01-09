#!/bin/bash

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
	echo "this program must be run in root"
	exit 1
fi
	echo "adding remote login detector to spudnik and root account"

        echo "wall someone logged into the Spudnik account from \$SSH_CONNECTION" >> /home/spudnik/.bashrc
	echo "wall someone logged into the Root account from \$SSH_CONNECTION" >> /root/.bashrc
	exit 0
