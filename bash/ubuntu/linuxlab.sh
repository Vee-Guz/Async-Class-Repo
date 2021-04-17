#!/bin/bash

# install apache
sudo apt update
sudo apt install apache2

#instal mySQL
sudo apt-get update
sudo apt-get install mysql-server


#view current hard disks and partitions
echo "current hard disks and partitions"
ls /dev/sd*

echo "commands to run when creating a new disk"
cat fdiskcommands.txt

echo "create new disk"
fdisk /dev/sdt < fdiskcommnads.txt 

