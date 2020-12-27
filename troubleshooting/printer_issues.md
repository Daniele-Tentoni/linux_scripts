# Printer issues
In this file are listed all issues I had with my fuckin printers. Oh, my fuckin printers, why people print things in 2020/21?

## Printer status
I can watch printer status with:
```bash
lpstat -t
```
An output like this:
```bash
scheduler is running
system default destination: Epson-WF-2810
device for Epson-WF-2810: <your printer address>
Epson-WF-2810 accepting requests since Sun 27 Dec 2020 14:36:30 CET
printer Epson-WF-2810 now printing Epson-WF-2810-17.  enabled since Sun 27 Dec 2020 14:36:30 CET
	Processing page 3...
Epson-WF-2810-17        ap            14891008   Sun 27 Dec 2020 14:36:30 CET
```

## Issues with network printers
My printer are added automatically to my Ubuntu based distro (Pop OS! in my case). One bad day, she has stopped to print any file from my pc, but from my smartphone I managed to do without any problems.
So, with help of [AskUbuntu.com](https://askubuntu.com/questions/1128164/no-suitable-destination-host-found-by-cups-browsed) and the [response](https://askubuntu.com/a/1128869/1156972), I've unistalled cups-browsed deamon:
```bash
sudo apt-get purge --autoremove cups-browsed
```
In my version 20.04, I don't need to restart the system. In version 18.04, people have to do it. After that, unistall each printer that have problems and add it manually. Print test page and over.
