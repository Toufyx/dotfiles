#!/bin/sh

SCRIPT_DIR="$(dirname "$0")"

# install elacritty if not already there
brew install tmux

# deploy tmux configuration
cp $SCRIPT_DIR/config/tmux.conf ~/.tmux.conf
