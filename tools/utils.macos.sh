#!/bin/sh
#
# Install Various Tools on MacOS System
# Required HomeBrew Installation
#

# install GNU File, Shell, and Text utilities
brew install coreutils

# install python tools
brew install pyenv
brew install isort black flake8
brew install poetry

# WGET is not part of the mac os standard lib ... and yet so powerful !
brew install wget

# JQ is a command line JSON parser that allows to make data query over JSON structures
brew install jq
