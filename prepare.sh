#!/bin/bash
cat /etc/issue
sed -i 's/archive.ubuntu.com/ftp.daum.net/g' /etc/apt/sources.list
rm -rf /var/lib/apt/lists/*
apt update
apt install curl -y
apt install libssl-dev libcurl4-openssl-dev libelf-dev libdw-dev cmake gcc binutils-dev libc6-dev -y
apt install pkg-config -y

curl https://sh.rustup.rs -sSf | sh -s -- -y
echo "prepare OK"
