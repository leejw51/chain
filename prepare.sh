#!/bin/bash
export RUST_BACKTRACE=1
export RUSTFLAGS=-Ctarget-feature=+aes,+ssse3
export PATH=$HOME/.local/bin:$PATH
export LD_LIBRARY_PATH=$HOME/lib
export PKG_CONFIG_PATH=$HOME/lib/pkgconfig
echo "prepare OK"
