#!/bin/bash

# Install packer.nvim (update to lazy.nvim later)
git clone --depth 1 \
    https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Install ripgrep
cargo install ripgrep
