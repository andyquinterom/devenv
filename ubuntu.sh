#!/bin/bash

# Setup for Ubuntu
sudo apt-get update

## Docker
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install -y \
    docker-ce \
    docker-ce-cli \
    containerd.io \
    docker-buildx-plugin \
    docker-compose-plugin

sudo usermod -aG docker $USER

## Devtools

sudo apt-get install -y \
    fish \
    build-essential \
    cmake \
    git-all \
    g++ \
    gcc \
    gdb \
    make \
    curl \
    wget \
    apt-transport-https \
    ca-certificates \
    gnupg \
    ffmpeg \
    r-base

## i3
sudo apt-get install -y \
    i3 \
    i3status \
    nitrogen \
    picom \
    rofi \
    dex

## Azure CLI
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

## Google Cloud CLI
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
sudo apt-get update && sudo apt-get install -y google-cloud-cli

## NodeJS
./nodejs.sh

## Rust
./rust.sh

## Neovim
sudo snap install --edge nvim --classic

## Setup symlinks
./symlinks.sh

## Change keyboard layout with localectl
export KEYMAP=latam
localectl set-x11-keymap $KEYMAP
sudo localectl set-x11-keymap $KEYMAP

## Change /etc/default/keyboard
# XKBLAYOUT=latam
# BACKSPACE=guess
echo "XKBLAYOUT=latam" | sudo tee /etc/default/keyboard
echo "BACKSPACE=guess" | sudo tee -a /etc/default/keyboard
## Git
./git.sh


