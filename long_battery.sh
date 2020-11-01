#!/bin/bash

# Check if the user is a root or not.
if (( $EUID != 0 )); then
	echo "Please run as root"
	exit
fi

systemctl disable bluetooth.service
systemctl stop bluetooth.service
