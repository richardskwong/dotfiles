#! /bin/bash

brew update #make sure it's all update to date
brew doctor #make sure all is ok

brew install git
brew install zsh
brew install wget

brew install nvm
. $(brew --prefix nvm)/nvm.sh

nvm install node
nvm install 4
nvm install 6
nvm use 6

# Atom
ln -s /Applications/Atom.app/Contents/Resources/app/atom.sh /usr/local/bin/atom

# symlinks
ln -sf $(pwd)/gitconfig ~/.gitconfig
ln -sf $(pwd)/zshrc ~/.zshrc
ln -sf $(pwd)/vimrc ~/.vimrc

# installing pure
npm install --global pure-prompt

chsh -s /bin/zsh #change default shell to zsh
#chsh -s /bin/zsh #change default shell back to sh

# Install terminal profiles
mkdir -p ~/workspace
cd ~/workspace
git clone https://github.com/lysyi3m/osx-terminal-themes
open ~/workspace/osx-terminal-themes/schemes/MaterialDark.terminal

# install pip (python)
sudo easy_install pip
