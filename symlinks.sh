#!/bin/bash

# Create symlinks
mkdir -p $HOME/.config

# Neovim
ln -sf $(pwd)/nvim $HOME/.config/nvim

# .profile
ln -sf $(pwd)/profile $HOME/.profile

# Alacritty
ln -sf $(pwd)/alacritty $HOME/.config/alacritty

# i3
ln -sf $(pwd)/i3 $HOME/.config/i3
ln -sf $(pwd)/i3status $HOME/.config/i3status
