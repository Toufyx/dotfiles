#!/bin/sh
# Install yabai the tiling window manager

SCRIPT_DIR=`realpath "$(dirname "$0")"`

# install yabai with brew
brew install koekeishiya/formulae/yabai

# deploy yabai file
mkdir -p $HOME/.config/
rm -rf $HOME/.config/yabai
ln -s $SCRIPT_DIR/config $HOME/.config/yabai
