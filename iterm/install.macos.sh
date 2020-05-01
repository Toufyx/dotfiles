#!/bin/sh

# make sur iTerm not installed yet !
if [[ -d $HOME/Applications/iTerm.app ]]
then
    echo "iTerm2 already installed"
    exit 0
fi

# download zip file containing latest iTerm2 app
wget -O iterm.latest.zip https://iterm2.com/downloads/stable/latest

# unzip the Application
unzip iterm.latest.zip

# moove downloaded app to user's Application folder
cp iTerm.app $HOME/Applications/

# clean up files
rm -rf iTerm.app
rm iterm.latest.zip
