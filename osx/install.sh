#!/bin/sh

if [[ "$unamestr" == 'Darwin' ]]; then

brew install jq

brew cask install camtasia
brew cask install docker
brew cask install firefox
brew cask install java
brew cask install iterm2
brew install ccat

# Pivotal stuff
brew tap pivotal/tap
brew install pace-cli


# .Net
# brew cask install dotnet
brew cask install dotnet-sdk

# Install go
brew install golang
mkdir -p $GOPATH $GOPATH/src $GOPATH/pkg $GOPATH/bin

brew cask install istat-menus

# ZSH install (not Oh my zsh)
# brew install zsh
# chsh -s /bin/zsh
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions

# MSFT Stuff and extensions for VSCode
brew cask install visual-studio
brew cask install visual-studio-code

sh ./vscode-ext.sh

# Azure CLI 2.0
curl -L https://aka.ms/InstallAzureCli | bash

# install terminal screen recorder
brew install asciinema

# docker stuff
brew install docker-clean
brew install docker-completion
brew install docker-compose-completion

# Buildpacks
brew tap buildpack/tap
brew install pack

# Install apps from the store
# install mas-cli to install from the Mac App store
brew install mas

# Nerd Fonts
brew tap caskroom/fonts
brew cask install font-hack-nerd-font

# get Apple ID
# echo ""
# echo "Enter AppleID to signin to Mac App Store:"
# read -p "  AppleID (john@foo.com): " APPLEID



# install macos apps (mas list provides the req info)
mas install 497799835 # Xcode
mas install 1278508951 # Trello
mas install 441258766 #com.crowdcafe.windowmagnet (2.4.2)
mas install 409789998 #com.twitter.twitter-mac (4.3.2)
mas install 408981434 #com.apple.iMovieApp (10.1.11)
mas install 1295203466 #com.microsoft.rdc.macos (10.2.11)
mas install 406056744 #com.evernote.Evernote (7.9)
mas install 409183694 #com.apple.iWork.Keynote (9.0.1)
mas install 497799835 #com.apple.dt.Xcode (10.2)
mas install 803453959 #com.tinyspeck.slackmacgap (3.3.8)
mas install 585829637 # Todoist
mas install 409201541 #com.apple.iWork.Pages (8.0)
mas install 682658836 #com.apple.garageband10 (10.3.2)
mas install 1176895641 # Spark
mas install 638332853 #com.logitech.lfb.Logitech-Camera-Settings (3.31.623)
mas install 409203825 #com.apple.iWork.Numbers (6.0)
mas install 865500966 # Feedly
mas install 1176895641 # Spark
mas install 1295203466 # Microsoft Remote Desktop 

else
    echo "Not running OSX therefore skipping Homebrew install"
fi