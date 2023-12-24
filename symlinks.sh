#!/bin/bash

# Create symlinks
mkdir -p $HOME/.config

# Remove old symlinks for directories
rm -rf $HOME/.config/alacritty
rm -rf $HOME/.config/i3
rm -rf $HOME/.config/i3status
rm -rf $HOME/.config/nvim

# Neovim
ln -sf $(pwd)/nvim $HOME/.config/nvim

# .profile
ln -sf $(pwd)/profile $HOME/.profile

# Alacritty
ln -sf $(pwd)/alacritty $HOME/.config/alacritty

# i3
ln -sf $(pwd)/i3 $HOME/.config/i3
ln -sf $(pwd)/i3status $HOME/.config/i3status
