#!/bin/sh

SCRIPT_DIR=`realpath "$(dirname "$0")"`

# install elacritty if not already there
brew install tmux

# deploy tmux configurations file
rm $HOME/.tmux.conf
ln -s $SCRIPT_DIR/config/tmux.conf $HOME/.tmux.conf
