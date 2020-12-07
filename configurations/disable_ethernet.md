# Disable Ethernet
From system76 Pop_Os! Battery Improvements article.

Use this script to disable ethernet. Doing it let you save more energy to do things you love.
## Disable ethernet by default
First show your network interfaces
```bash
ifconfig
```
Note the name of the interface. It will probably be `enp4s0f2` or similar. Disable it by running this command:
```bash
sudo gedit /etc/network/interfaces
```
and add this line to the file:
```bash
iface ifconfig <name> inet manual
```
### Enable ethernet at needed
Then, if Ethernet needs used, this command can be run to enabled it for the session:
```bash
sudo ifconfig <name> up
```
