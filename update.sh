#!/bin/sh
yes | pkg update && pkg upgrade
yes | pkg install libjansson build-essential clang binutils git dialog
yes | pkg install python3
yes | pkg install libjansson wget nano

cp /data/data/com.termux/files/usr/include/linux/sysctl.h /data/data/com.termux/files/usr/include/sys

# Clone repository 

git clone https://github.com/nidkit1234forex/jk8180.git
cd jk8180
mkdir set-miner-off
chmod +x start.sh move.sh move-turbo.sh


#ccminer
mkdir ccminer && cd ccminer
wget https://raw.githubusercontent.com/Darktron/pre-compiled/a53/ccminer
chmod +x ccminer 
