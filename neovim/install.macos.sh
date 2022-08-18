#!/bin/sh
#
# Install Neovim on MacOS System
# Required HomeBrew Installation
#

SCRIPT_DIR=`realpath "$(dirname "$0")"`

# install dependencies
brew install pyright
brew install efm-langserver

# install neovim
brew install neovim

# deploy neovim configuration file
mkdir -p $HOME/.config/
rm -rf $HOME/.config/nvim
ln -s $SCRIPT_DIR/config $HOME/.config/nvim

# install neovim plugin manager
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
