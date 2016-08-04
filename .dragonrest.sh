#!/bin/bash
# This script is used to put this dragon to rest

echo "stopping network-manager"
#service network-manager stop
   
echo " Blocking all Rx/Tx"
rfkill block all

echo "verifying Rx/Tx status"
rfkill list all
  
echo "Entering dragonrest"
poweroff
