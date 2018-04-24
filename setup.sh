#!/bin/bash

# setting
kbk_dir=Develop/kubocker/dotfiles

# start
echo "Start setting of dotfiles..."

dotfiles=(
  .bashrc
  .bash_profile
  .gitconfig
  .tmux.conf
  .vimrc
  )
dir=$(pwd)

if [ $dir != $HOME/$kbk_dir ]; then
	echo "WARNING..."
	echo "change path $kbk_dir"
	return
fi


echo 'setup packages....'
source $HOME/$kbk_dir."/apps/_install.sh"

# pyenv
if [ ! -e ~/.pyenv ]; then
  git clone https://github.com/yyuu/pyenv.git ~/.pyenv
fi

# jenv
if [ ! -e ~/.jenv ]; then
  git clone https://github.com/gcuisinier/jenv.git ~/.jenv
  ## jenv add $(/usr/libexec/java_home -v 1.8)
fi

# nodenv
if [ ! -e ~/.nodenv ]; then
  git clone git://github.com/nodenv/nodenv.git ~/.nodenv
  git clone https://github.com/nodenv/node-build.git ~/.nodenv/plugins/node-build
fi

# SDKMAN
if [ ! -e ~/.sdkman ]; then
  curl -s https://get.sdkman.io | bash
  source "/Users/kubocker/.sdkman/bin/sdkman-init.sh"
fi

# nim
if [ ! -e ~/.nimble ]; then
  git clone https://github.com/nim-lang/nimble.git ~/.nimble
fi

echo 'git prompt'
# git-prompt
if [ ! -e ~/.git-prompt.sh ]; then
  curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
fi

echo 'git completion'
# git-completion
if [! -e ~/.git-completion.bash ]; then
  curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > ~/.git-completion.bash
fi

echo 'Checking...'
if [ -e $HOME/.vim ]; then
    echo 'rm -rf ~/.vim; then mkdir ~/.vim'
    rm -rf $HOME/.vim
fi

echo "Installing vim-plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "make... symbolink"
for file in ${dotfiles[@]}
do
  rm -rf $HOME/$file
  # if [ -e $HOME/$file ]; then
  #  rm -rf $HOME/$file
  # fi
  ln -s $HOME/$kbk_dir/dotfiles/$file $HOME/$file
done

# vim-plug
echo "Installing Vim Plugin"
# vim +PlugInstall +qall

# source
echo "source ~/.bash_profile and ~/.bashrc"
source ~/.bash_profile
source ~/.bashrc
#exec $SHELL -l # 再読み込み

echo 'setup packages....'
source $HOME/$kbk_dir/packages/_install.sh

echo 'setup config....'
source $HOME/$kbk_dir/config/_setup.sh

echo 'setup home....'
source $HOME/$kbk_dir/home/_setup.sh

echo "setting tmux"
tmux source-file ~/.tmux.conf

echo "End setting of dotfiles"
