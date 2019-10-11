#!/bin/bash
cat /etc/issue
sed -i 's/archive.ubuntu.com/ftp.daum.net/g' /etc/apt/sources.list
rm -rf /var/lib/apt/lists/*
apt-get install software-properties-common -y
add-apt-repository ppa:george-edison55/cmake-3.x -y
apt update
apt install wget curl -y
apt install python3 libssl-dev libcurl4-openssl-dev libelf-dev libdw-dev cmake gcc binutils-dev libc6-dev -y
apt install pkg-config -y

curl https://sh.rustup.rs -sSf | sh -s -- -y
cmake --version
echo "prepare OK"
