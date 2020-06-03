#!/bin/sh

SCRIPT_DIR=`realpath "$(dirname "$0")"`

# install elacritty if not already there
brew install tmux

# deploy tmux configuration file
rm $HOME/.tmux.conf
ln -s $SCRIPT_DIR/config/tmux.conf $HOME/.tmux.conf
