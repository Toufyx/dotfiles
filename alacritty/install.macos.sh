#!/bin/sh
#
# Install Alacritty on MacOS System
#

SCRIPT_DIR=`realpath "$(dirname "$0")"`

# install alacritty program
brew install --cask alacritty

# deploy alacritty configuration file
mkdir -p $HOME/.config/
rm -rf $HOME/.config/alacritty/
ln -s $SCRIPT_DIR/config $HOME/.config/alacritty
