#!/bin/bash
echo "Install battery power improvements tools"

if [ $# -gt 0 ]; then
	echo "There are some arguments"
fi

# Install TLP fore manage battery improvements.
sudo apt install tlp tlp-rdw

# Install Powertop for battery tuning and other infos.
sudo apt install powertop
# sudo powertop-c # This may take 15 minutes to finish.
