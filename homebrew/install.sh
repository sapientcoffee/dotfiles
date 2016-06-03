#!/bin/sh
# Scirpt to install and setup Homebrew if executed on a Mac
unamestr=`uname`
if [[ "$unamestr" == 'Darwin' ]]; then
    # Check for Homebrew already installed
    if test ! $(which brew)
        then
            echo " Installing Homebrew for you."
            ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        fi
    # Install homebrew packages
    brew install grc coreutils spark z ack git autoconf git-extras htop-osx python python3 openconnect openssl wget tree tmux
    exit 0
else
    echo "Not running OSX therefore skipping Homebrew install"
    exit 0
fi
