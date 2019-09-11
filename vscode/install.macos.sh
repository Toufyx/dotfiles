#!/bin/sh

# We assume an instance of VSCode is up and running
# with command line tool already configured

# deploy the settings
cp config/settings.json "~/Library/Application Support/Code/User/settings.json"

# install listed extensions
for extension in $(cat config/code.extensions); do code --install-extension $extension; done
