#!/bin/sh

SCRIPT_DIR="$(dirname "$0")"

# install elacritty if not already there
brew cask list alacritty || brew cask install alacritty

# deploy alacritty configuration
mkdir -p ~/.config/alacritty/
cp $SCRIPT_DIR/config/alacritty.yml ~/.config/alacritty/alacritty.yml
