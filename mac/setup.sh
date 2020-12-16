#!/usr/bin/env bash

# Install Homebrew, set bash to default shell 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install bash 
chsh -s /bin/bash

# Install apps and binaries with Brew
source mac/brew.sh

# Set npm permissions and install global binaries
source shared/npm.sh

# Create symlinks for dotfiles
source link-dotfiles.sh

# Configure MacOS defaults.
# You only want to run this once during setup. Additional runs may reset changes you make manually.
source ./macos

