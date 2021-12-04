#!/bin/sh

SCRIPT_DIR=`realpath "$(dirname "$0")"`

# install elacritty if not already there
brew install tmux

# deploy tmux configurations file
mkdir -p $HOME/.tmux/
rm $HOME/.tmux.conf
rm $HOME/.tmux/session.conf
ln -s $SCRIPT_DIR/config/tmux.conf $HOME/.tmux.conf
ln -s $SCRIPT_DIR/config/session.conf $HOME/.tmux/session.conf
