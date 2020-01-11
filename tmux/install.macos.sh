#!/bin/sh

# install elacritty if not already there
brew install tmux

# deploy tmux configuration
cp config/tmux.conf ~/.tmux.conf
