#!/bin/bash
if [[ 'id -u' -eq 0 ]]
then

else
	echo "sudo privileges required"
	exit 1

fi

clear
Green='\033[0;32m'
NC='\033[0m'
Red='\033[0;31m'
while true;
do
  #sudo systemctl start <serviceName>

  if [[ $? -eq 0 ]]; then
        echo -e "Service ${Green}OK${NC} $(date +"%I:%M:%S %p")"
  else
        echo -e "${Red}Error${NC}  $(date +"%I:%M:%S %p")"
  fi

  #sudo systemctl start <serviceName>

  if [[ $? -eq 0 ]]; then
  	echo -e "Service ${Green}OK${NC} $(date +"%I:%M:%S %p")"
  else
  	echo -e "${Red}Error${NC}  $(date +"%I:%M:%S %p")"
  fi

  sleep 3s
done
