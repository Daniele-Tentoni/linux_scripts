#!/bin/bash

# Antonio Parolisi
# Use this script to disable a lot of useless battery drain process or services.

# Disable Bluetooth
echo "You wanna disable bluetooth?"
./disable_bluetooth.sh

echo "You wanna disable ethernet?"
./disable_ethernet.sh
