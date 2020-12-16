#!/usr/bin/env bash

# Install Homebrew (if not installed)
echo "Installing Homebrew."

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed` as gsed
brew install gnu-sed

# Install `wget` with IRI support.
brew install wget --with-iri

brew install gmp
brew install grep
brew install node

# Install useful binaries.
brew install ffmpeg
brew install git
brew install git-lfs
brew install github/gh/gh
brew install p7zip
brew install pigz
brew install pv
brew install rsync
brew install ssh-copy-id
brew install tree
brew install vbindiff
brew install youtube-dl

# Binaries from my last mac
brew install autoconf
brew install gdbm
brew install hyperkit
brew install icu4c
brew install go
brew install hugo 
brew install kubernetes-cli
brew install libev
brew install libyaml
brew install minikube
brew install node
brew install openjdk@11
brew install openssl@1.1
brew install pkg-config
brew install python
brew install ruby
brew install rbenv
brew install rbenv-bundler
brew install ruby-build 
brew install ruby@2.4
brew install sqlite 
brew install xz
brew install yarn



# Installs Casks
brew tap caskroom/cask

## Apps I use
brew cask install lastpass
brew cask install dash
brew cask install iterm2
brew cask install kap
brew cask install firefox
brew cask install google-chrome
brew cask install grammarly
brew cask install notion
brew cask install sketch
brew cask install figma
brew cask install gitkraken
brew cask install zoom
brew cask install docker

## Communication apps
brew cask install skype
brew cask install slack
brew cask install discord
brew cask install whatsapp 
brew cask install messenger
brew cask install spotify

# Remove outdated versions from the cellar.
brew cleanup
