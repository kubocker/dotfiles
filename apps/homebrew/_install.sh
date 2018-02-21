#!/bin/bash

which -s brew
if [[ $? != 0 ]] ; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/gist/323731)"
fi


brew tap boo/cask-upgrade
brew tap homebrew/services

cat Brewfile | xargs brew install
cat Caskfile | xargs brew cask install

