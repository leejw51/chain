#!/bin/bash
cat /etc/issue
export RUST_BACKTRACE=1
export RUSTFLAGS=-Ctarget-feature=+aes,+ssse3
export PATH=$HOME/.local/bin:$PATH
export LD_LIBRARY_PATH=$HOME/lib
export PKG_CONFIG_PATH=$HOME/lib/pkgconfig


rm -rf /var/lib/apt/lists/*
apt update
apt install curl
apt install libssl-dev libcurl4-openssl-dev libelf-dev libdw-dev cmake gcc binutils-dev libc6-dev

curl https://sh.rustup.rs -sSf | sh -s -- -y
echo "prepare OK2"
