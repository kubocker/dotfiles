#! /bin/bash

# Mac
if [ $(uname -s) == 'Darwin' ]; then

  ln -s $HOME/Develop/kubocker/dotfiles/config/vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
  ln -s $HOME/Develop/kubocker/dotfiles/config/vscode/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.json
  ln -s $HOME/Develop/kubocker/dotfiles/config/vscode/snippets $HOME/Library/Application\ Support/Code/User/

# Linux
else

  # Debian or Ubuntu
  if [ -e /etc/debian_version ]  || [ -e /etc/debian_release ]; then
    ln -s $HOME/Develop/kubocker/dotfiles/config/vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
    ln -s $HOME/Develop/kubocker/dotfiles/config/vscode/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.json
    ln -s $HOME/Develop/kubocker/dotfiles/config/vscode/snippets $HOME/Library/Application\ Support/Code/User/
  fi

  # RedHat or CentOS
  if [ -e /etc/redhat-release ]; then
    ln -s $HOME/Develop/kubocker/dotfiles/config/vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
    ln -s $HOME/Develop/kubocker/dotfiles/config/vscode/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.json
    ln -s $HOME/Develop/kubocker/dotfiles/config/vscode/snippets $HOME/Library/Application\ Support/Code/User/
  fi

fi
