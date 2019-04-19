#!/bin/sh
#
# Install Docker on MacOS System
#

# Download Docker dmg file
wget https://download.docker.com/mac/stable/Docker.dmg -O /tmp/Docker.dmg

# Mount the dmg file
hdiutil mount /tmp/Docker.dmg

# Copy its content to the Application Folder
sudo cp -R /Volumes/Docker/Docker.app /Applications/

# Unmount the dmg file
hdiutil unmount "/Volumes/Docker/"

# Delete dmg file
rm /tmp/Docker.dmg
