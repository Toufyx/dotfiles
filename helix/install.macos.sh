#!/bin/sh
#
# Install Helix on MacOS System
# Required HomeBrew Installation
#

SCRIPT_DIR=`realpath "$(dirname "$0")"`

# install dependencies
brew install python-lsp-server

# install neovim
brew install helix

# deploy neovim configuration file
mkdir -p $HOME/.config/
rm -rf $HOME/.config/helix
ln -s $SCRIPT_DIR/config $HOME/.config/helix
