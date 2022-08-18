#!/bin/sh
#
# Install Alacritty on MacOS System
# 
# expect Alacritty to already be installed
# this will just link the confg file
#

SCRIPT_DIR=`realpath "$(dirname "$0")"`

# deploy alacritty configuration file
mkdir -p $HOME/.config/alacritty/
rm -rf $HOME/.config/alacritty/
ln -s $SCRIPT_DIR/config $HOME/.config/alacritty
