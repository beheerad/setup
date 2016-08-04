#!/bin/bash
# this script is used to spoof my mac before connecting to the web
#see /etc/rc.local for stratup rfkill

echo " checking network-manager status"
service network-manager status

#echo "starting network-manager"
#service network-manager start

#echo " starting nm-aplet"
#nm-applet &

echo "Unblocking wifi"
rfkill unblock wifi

echo "Taking eth0 down!"
ifconfig eth0 down
echo " Randomizing eth0 MAC adress"
macchanger -r eth0

#echo "Taking eth1 down!"
#ifconfig eth1 down
#echo " Randomizing eth1 MAC adress"
#macchanger -r eth1

#echo "Taking eth2 down!"
#ifconfig eth2 down
#echo "Randomizing eth2 MAC adress"
#macchanger -r eth2

echo "Taking wlan0 down!"
ifconfig wlan0 down
echo " Randomizing wlan0 MAC adress"
macchanger -r wlan0

#echo "Taking wlan1 down!"
#ifconfig wlan1 down
#echo "Randomizing wlan1 MAC adress"
#macchanger -r wlan1

#echo "Taking wlan2 down!"
#ifconfig wlan2 down
#echo "Randomizing wlan2 MAC adress"
#macchanger -r wlan2

#echo "Taking mon0 down!"
#ifconfig mon0 down
#echo "Randomizing mon0 MAC adress"
#macchanger -r mon0


echo "Launching all downed access points!"
ifconfig eth0 up
#ifconfig eth1 up
#ifconfig eth2 up
ifconfig wlan0 up
#ifconfig wlan1 up
#ifconfig wlan2 up
#ifconfig mon0 up

echo "Random Spoofing Completed!"

#echo "Launching Burpsuite"
#burpsuite &

#echo "Launching Tor"
#tor

