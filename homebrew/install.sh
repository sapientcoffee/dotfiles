#!/bin/sh

# use set -e instead of #!/bin/bash -e in case we're
# called with `bash ~/bin/scriptname`
set -e # bail out early if any command fails
set -u # fail if we hit unset variables
set -o pipefail # fail if any component of any pipe fails

main() {
# Scirpt to install and setup Homebrew if executed on a Mac
unamestr=`uname`
if [[ "$unamestr" == 'Darwin' ]]; then
    # Check for Homebrew already installed
	echo "Checking if brew is already installed .... if not will install."
    if test ! $(which brew)
        then
            echo " Installing Homebrew for you."
            ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
		brew doctor
		brew install cask
		brew doctor
	# homebrew cask updater: https://github.com/buo/homebrew-cask-upgrade
	brew tap buo/cask-upgrade
        fi
    # Install homebrew packages
	echo "Lets install a few packages that will be useful"
    brew install bash-completion grc coreutils spark z ack git autoconf git-extras htop-osx python python3 openconnect openssl wget tree tmux kubespy kube-ps1 mas zsh zsh-completions
brew cask install google-chrome
brew cask install skype
brew cask install slack
brew cask install iterm2
    echo "Done installing brew stuff"
	exit 0
else
    echo "Not running OSX therefore skipping Homebrew install"
    exit 0
fi
}

main "$@"
