#!/bin/sh

# ZSH is install by default on mac os systems,
# Nothing to do here except install package manager and config files

# install antigen package manager
mkdir -p ~/Workspace/bin
curl -L git.io/antigen > ~/Workspace/bin/antigen.zsh

# deploy zshrc file
cp config/zshrc ~/.zshrc
