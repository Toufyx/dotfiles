#!/bin/sh

# install elacritty if not already there
brew cask list alacritty || brew cask install alacritty

# deploy alacritty configuration
mkdir -p ~/.config/alacritty/
cp config/alacritty.yml ~/.config/alacritty/alacritty.yml
