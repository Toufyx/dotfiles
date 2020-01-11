#!/bin/sh

SCRIPT_DIR="$(dirname "$0")"

# install zsh packages
apt-get install zsh

# install antigen package manager
mkdir -p /root/bin
curl -L git.io/antigen > /root/bin/antigen.zsh

# deploy zshrc file
cp $SCRIPT_DIR/config/zshrc.debian.root /root/.zshrc
