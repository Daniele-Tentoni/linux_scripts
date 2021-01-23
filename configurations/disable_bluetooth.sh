#!/bin/bash

# Check if the user is a root or not.
if (( $EUID != 0 )); then
	echo "Please run as root"
	exit
fi

# Disable bluetooth service
systemctl disable bluetooth.service
# Stop bluetooth service
systemctl stop bluetooth.service
