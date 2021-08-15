#!/bin/sh
#
# Install Neovim on MacOS System
# Required HomeBrew Installation
#

SCRIPT_DIR=`realpath "$(dirname "$0")"`

# install neovim
brew install neovim

# deploy neovim configuration file
mkdir -p $HOME/.config/nvim/
rm $HOME/.config/nvim/init.vim
ln -s $SCRIPT_DIR/config/init.vim $HOME/.config/nvim/init.vim
