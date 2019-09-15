#!/bin/sh

# install zsh packages
apt-get install zsh

# install antigen package manager
mkdir -p /root/bin
curl -L git.io/antigen > /root/bin/antigen.zsh

# deploy zshrc file
cp config/zshrc.debian.root /root/.zshrc
