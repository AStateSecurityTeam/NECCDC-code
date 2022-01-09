#!/bin/bash
clear
Green='\033[0;32m'
NC='\033[0m'
Red='\033[0;31m'
while true;
do
  sudo systemctl start sshdd
  #sudo systemctl start <serviceName>
  if [[ $? -eq 0 ]]; then
  	echo -e "Service ${Green}OK${NC} $(date +"%I:%M:%S %p")"
  else
  	echo -e "${Red}Error${NC}  $(date +"%I:%M:%S %p")"
  fi
  sleep 3s
done
