#! /bin/bash
echo "
SYSTEM DETAILS

- OS Version                = `lsb_release -d | cut -f2`

- Kernel Version            = `uname -r`

- CPU Architecture          = `lscpu | grep -i Archi | cut -d : -f 2`

- Memory free (real)        = `free -m | head -n 2 | tail -n 1 | awk {'print $4'}` Mb

- Memory free (cache)       = `free -m | head -n 3 | tail -n 1 | awk {'print $3'}` Mb

- Swap in use               = `free -m | tail -n 1 | awk {'print $3'}` Mb

- Disk Space Used           = `df -h / | awk '{ a = $4 } END { print a }'`

- CPU Virtual Cores         = `cat /proc/cpuinfo | grep processor | wc -l`

- Clock Speed		    = `cat /proc/cpuinfo | grep MHz | cut -d ' ' -f 3 | uniq`

- RAM 			    = `grep MemTotal /proc/meminfo | cut -d : -f 2`

- Network Bandwidth 	    = `cat /sys/class/net/eth0/statistics/rx_bytes`

- Firewall Rules 	    =
		Allowed Services : `firewall-cmd --list-services`
		Allowed Ports    : `firewall-cmd --list-ports`

- IP Tables = 	
__________________________________________________________________

`iptables -L`
__________________________________________________________________




-Disk =
__________________________________________________________________

`lsblk -a`
__________________________________________________________________
"


