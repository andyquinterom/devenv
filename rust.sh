#!/bin/bash

curl https://sh.rustup.rs -sSf | sh -s -- -y

# Source the cargo env
source $HOME/.cargo/env

# Install Rust-Analyzer
rustup component add rust-analyzer
