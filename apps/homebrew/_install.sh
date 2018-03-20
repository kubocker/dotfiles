#!/bin/bash

which -s brew
if [ $(uname -s) = 'Darwin' ]; then

  [ -z "$(which brew)" ] &&
      ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null ; brew install caskroom/cask/brew-cask 2> /dev/null

  brew update

  brew tap Homebrew/bundle
  brew tap caskroom/cask
  brew tap pivotal/tap
  brew tap ethereum/ethereum
  brew tap boo/cask-upgrade
  brew tap homebrew/services
  # brew bundle

  cat Brewfile | xargs brew install
  cat Caskfile | xargs brew cask install

  brew bundle

fi