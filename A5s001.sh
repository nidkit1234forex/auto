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

mkdir ccminer && cd ccminer
wget https://raw.githubusercontent.com/Darktron/pre-compiled/a53/ccminer
chmod +x ccminer 

echo 'cd jk8180 && ./start.sh' >> ~/.bashrc
echo '{
    "name": "A5s001",
    "cpu": 8
}' > ~/jk8180/set-miner-off/offline.json
killall -9 -u $(id -un)
