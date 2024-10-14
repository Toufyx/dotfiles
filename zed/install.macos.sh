#!/bin/sh
# Assuming zed IDE already installed

SCRIPT_DIR=`realpath "$(dirname "$0")"`

# deploy settings file
rm $HOME/.config/zed/settings.json
ln -s $SCRIPT_DIR/config/settings.json $HOME/.config/zed/settings.json

# deploy themes folder
rm -rf $HOME/.config/zed/themes
ln -s $SCRIPT_DIR/config/themes $HOME/.config/zed/themes

