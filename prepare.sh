#!/bin/bash
cat /etc/issue
export RUST_BACKTRACE=1
export RUSTFLAGS=-Ctarget-feature=+aes,+ssse3
export PATH=$HOME/.cargo/bin:$HOME/.local/bin:$PATH
export LD_LIBRARY_PATH=$HOME/lib
export PKG_CONFIG_PATH=$HOME/lib/pkgconfig


sed -i 's/archive.ubuntu.com/ftp.daum.net/g' /etc/apt/sources.list
rm -rf /var/lib/apt/lists/*
apt update
apt install curl -y
apt install libssl-dev libcurl4-openssl-dev libelf-dev libdw-dev cmake gcc binutils-dev libc6-dev -y

curl https://sh.rustup.rs -sSf | sh -s -- -y
$HOME/.cargo/env
echo "prepare OK2"
