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
    .fabricrc
	)
dir=$(pwd)

if [ $dir != $HOME/$kbk_dir ]; then
	echo "WARNING..."
	echo "change path $kbk_dir"
	return
fi

echo 'setup apps....'
source $HOME/$kbk_dir."/apps/_install.sh"

echo 'setup config....'
source $HOME/$kbk_dir."/config/_install.sh"

echo 'setup home....'
source $HOME/$kbk_dir."/home/_install.sh"

echo 'git prompt'
# git-prompt
if [ ! -e ~/.git-prompt.sh ]; then
  curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
fi

echo 'git completion'
# git-completion
if [! -e ~/.git-completion.bash ]; then
  curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > git-completion.bash
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
  if [ -e $HOME/$file ]; then
    rm -f $HOME/$file
  fi
  # ln -s $dir/dotfiles/$file $HOME/$file
  ln -s $dir/dotfiles/dotfiles/$file $HOME/$file
done

# vim-plug
echo "Installing Vim Plugin"
vim +PlugInstall +qall

# source
echo "source ~/.bash_profile and ~/.bashrc"
source ~/.bash_profile
source ~/.bashrc
#exec $SHELL -l # 再読み込み


echo "setting tmux"
tmux source-file ~/.tmux.conf

echo "End setting of dotfiles"
