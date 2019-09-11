#!/bin/sh

# install elacritty if not already there
brew cask list alacritty || brew cask install alacritty

# using alacritty without a terminal multiplexer is kinda impossible...
brew list tmux || brew install tmux

# deploy alacritty configuration
mkdir -p ~/.config/alacritty/
cp config/alacritty.yml ~/.config/alacritty/alacritty.yml
