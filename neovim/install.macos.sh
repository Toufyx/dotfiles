#!/bin/sh
#
# Install Neovim on MacOS System
# Required HomeBrew Installation
#

SCRIPT_DIR=`realpath "$(dirname "$0")"`

# install neovim
brew install neovim

# deploy neovim configuration file
mkdir -p $HOME/.config/
rm -rf $HOME/.config/nvim
ln -s $SCRIPT_DIR/config $HOME/.config/nvim
