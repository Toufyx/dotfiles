#!/bin/sh

# install alacritty
brew cask install alacritty

# deploy alacritty configuration
cp config/alacritty.yml ~/.config/alacritty/alacritty.yml
