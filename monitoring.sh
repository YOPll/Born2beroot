#!/bin/bash
date=$(who -b | cut -c 23-)
ker=$(uname -a)
PCPU=$(cat /proc/cpuinfo | grep "physical id" | wc -l)
VCPU=$(cat /proc/cpuinfo | grep "processor" | wc -l)
LCPU=$(top -bn1 | grep load | cut -d ' ' -f13 | sed 's/,/%/g')
RAM=$(free -m | grep "Mem" | cut -b 18-20)
URAM=$(free -m | grep "Mem" | cut -b 31-32)
PRAM=$(free | awk '$1 == "Mem:" {printf("%.2f"), $3/$2*100}')
UDISK=$(df -h | cut -c 32- | cut -d ' ' -f3 | sed -n '4p')
FDISK=$(df -h | cut -c 32- | cut -d ' ' -f1 | sed -n '4p')
ADISK=$(df -h | cut -c 32- | cut -d ' ' -f7 | sed -n '4p')
LVM=$(lsblk | grep "lvm" | wc -l)
LVMT=$(if [ $LVM -eq 0 ]; then echo 'no'; else echo 'yes'; fi)
CNCT=$(netstat -an | grep "ESTABLISHED" | wc -l)
LOG=$(users | wc -w)
IP=$(hostname -I)
MAC=$(ip a | grep "ether" | cut -c 16-32)
SUD=$(sudo journalctl | grep "COMMAND" | wc -l)
wall "	#Architecture: $ker
	#CPU physical: $PCPU
	#vCPU: $VCPU
	#Memory Usage: $RAM/${URAM}MB ($PRAM%)
	#Disk Usage: $UDISK/${FDISK}Gb ($ADISK%)
	#CPU load: $LCPU
	#Last boot: $date
	#LVM use: $LVMT
	#Connexions TCP: $CNCT ESTABLISHED
	#User log: $LOG
	#Network: IP $IP ($MAC)
	#Sudo: $SUD cmd"
