#!/bin/sh
# ZSH is install by default on mac os systems,
# Nothing to do here except install package manager and config files

SCRIPT_DIR="$(dirname "$0")"

# install antigen package manager
mkdir -p ~/Workspace/bin
curl -L git.io/antigen > ~/Workspace/bin/antigen.zsh

# deploy zshrc file
cp $SCRIPT_DIR/config/zshrc.macos.user ~/.zshrc
