#!/bin/sh
# We assume an instance of VSCode is up and running
# with command line tool already configured

SCRIPT_DIR="$(dirname "$0")"

# deploy the settings
cp $SCRIPT_DIR/config/settings.json ~/Library/Application\ Support/Code/User

# install listed extensions
for extension in $(cat $SCRIPT_DIR/config/code.extensions); do code --install-extension $extension; done
