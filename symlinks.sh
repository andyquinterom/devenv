#!/bin/bash

# Create symlinks
mkdir -p $HOME/.config

# Remove old symlinks for directories
rm $HOME/.profile $HOME/.profile 2> /dev/null
rm -rf $HOME/.config/alacritty 2> /dev/null
rm -rf $HOME/.config/i3 2> /dev/null
rm -rf $HOME/.config/i3status 2> /dev/null
rm -rf $HOME/.config/nvim 2> /dev/null
rm -rf $HOME/.config/fish 2> /dev/null

# Neovim
ln -sf $(pwd)/nvim $HOME/.config/nvim

# .profile
ln -sf $(pwd)/profile $HOME/.profile

# Alacritty
ln -sf $(pwd)/alacritty $HOME/.config/alacritty

# i3
ln -sf $(pwd)/i3 $HOME/.config/i3
ln -sf $(pwd)/i3status $HOME/.config/i3status

# fish
ln -sf $(pwd)/fish $HOME/.config/fish
