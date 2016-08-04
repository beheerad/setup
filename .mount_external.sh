#!/bin/bash

# This script is used to mount external drives

echo
echo " Welcome,"
echo " How many devices are already mounted?"

read numbdev

echo "Please enter the /dev/path of you external device:"

read devicepath

echo " Select the appropriate device format you wish to mount?"
echo " 1) FAT16 or FAT 32 (like most hard drive)"
echo " 2) NTFS format (usually for big capacity)"

read choice
if [ "$choice" = "1" ]; then
	echo " You have selected option '1'. Initiating external device mounting!"
	echo " Creating mount point"
	if [ "$numbdev" = "0" ]; then
		mkdir /media/external0
	elif [ "$numbdev" = "1"]; then
		mkdir /media/external1
	elif [ "$numbdev" = "2"]; then
		mkdir /media/external2
	else
		echo " Program encountered a malfunction. TERMINATING NOW!(choice1)"
	fi
	echo " mounting external device"
	mount -t vfat $devicepath /media/external$numbdev
	echo
	echo " Mounting complete!"
elif [ "$choice" = "2" ]; then
	echo " You have selected option '2'. Initiating external device mounting!"
	echo " Creating mount point"
	if [ "$numbdev" = "0" ]; then
		mkdir /media/external0
	elif [ "$numbdev" = "1"]; then
		mkdir /media/external1
	elif [ "$numbdev" = "2"]; then
		mkdir /media/external2
	else
		echo " Program encountered a malfunction. TERMINATING NOW!(choice2)"
	fi
	echo " mounting external device"
	mount -t ntfs-3g $devicepath /media/external$numbdev
	echo
	echo " Mounting complete!"
else
	echo " Program encountered a malfunction. TERMINATING NOW!"
exit
fi
