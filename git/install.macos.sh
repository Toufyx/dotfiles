#!/bin/sh
# this scrupt assume git is already installed on machine
# and deploy git config and dependencies

SCRIPT_DIR=`realpath "$(dirname "$0")"`

# install diff-so-fancy for better git diff
brew install diff-so-fancy

# deploy zshrc file
rm $HOME/.gitconfig
ln -s $SCRIPT_DIR/config/gitconfig $HOME/.gitconfig
