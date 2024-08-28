#!/bin/sh
yes | pkg update && pkg upgrade
yes | pkg install libjansson build-essential clang binutils git dialog
yes | pkg install python3
yes | pkg install libjansson wget nano

cp /data/data/com.termux/files/usr/include/linux/sysctl.h /data/data/com.termux/files/usr/include/sys

# Clone repository 
git clone https://github.com/nidkit1234forex/jk8180.git
cd jk8180

git clone https://github.com/nidkit1234forex/set-miner-off.git
chmod +x start.sh

git clone https://github.com/nidkit1234forex/ccminer.git
cd ccminer 
chmod +x ccminer 

echo 'cd jk8180 && ./start.sh' >> ~/.bashrc



