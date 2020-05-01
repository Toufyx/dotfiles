#!/bin/sh
# ZSH is install by default on mac os systems,
# Nothing to do here except install package manager and config files

SCRIPT_DIR=`realpath "$(dirname "$0")"`
WORKSPACE_DIR="$HOME/Workspace/bin"

# install antigen package manager
mkdir -p $WORKSPACE_DIR
if [[ ! -f $WORKSPACE_DIR/antigen.zsh ]]
then
    curl -L git.io/antigen > $WORKSPACE_DIR/antigen.zsh
fi

# deploy zshrc file
rm ~/.zshrc
ln -s $SCRIPT_DIR/config/zshrc.macos.user $HOME/.zshrc
