#!/bin/bash

# flush_iptables.sh
# Purpose: to flush iptables rules in the event a 
# rogue rule is added in by Red Team

# tested on Linux Mint by Patrick Temple
# (GH user patrick-a-temple)

# instructions come from:
# https://www.digitalocean.com/community/tutorials/how-to-list-and-delete-iptables-firewall-rules

if [ $UID -ne 0 ];
then
	echo "ERROR: You must run this as the root user or with sudo."
	echo "This program will now exit."
	exit -1
fi

echo "Welcome to flush_iptables.sh"

# set default policies for each chain to 
# ACCEPT
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT

# flush NAT and mangle tables
iptables -t nat -F
iptables -t mangle -F

# flush all chains
iptables -F

# delete non-default chains
iptables -X

echo "All done. All rules are removed."
echo "You should reconfigure rules for Red Team IPs you already have seen."
