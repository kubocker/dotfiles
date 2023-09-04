#!/bin/bash

# setting
kbk_dir=Develop/kubocker/dotfiles

# start
echo "Start setting of dotfiles..."

dotfiles=(
  .bashrc
  .bash_profile
  .gitconfig
  .gitignore_global
  .vimrc
  )
dir=$(pwd)

if [ $dir != $HOME/$kbk_dir ]; then
	echo "WARNING..."
	echo "change path $kbk_dir"
	return
fi


echo 'setup packages....'
source $HOME/$kbk_dir/apps/_install.sh


# rust
if [ ! -e ~/.cargo ]; then
  curl https://sh.rustup.rs -sSf | sh
fi

# haskell
#if [ ! -e ~/.stack ]; then
#  curl -sSL https://get.haskellstack.org/ | sh
#fi


echo 'git prompt'
# git-prompt
if [ ! -e ~/.git-prompt.sh ]; then
  curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
fi

echo 'git completion'
# git-completion
if [ ! -e ~/.git-completion.bash ]; then
  curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash > ~/.git-completion.bash
fi

echo 'starship'
sh -c "$(curl -fsSL https://starship.rs/install.sh)"


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
vim +PlugInstall +qall

# SpaceVim
# echo "Installing SpaceVim..."
# curl -sLf https://spacevim.org/install.sh | bash -s -- --install vim

# source
echo "source ~/.bash_profile and ~/.bashrc"
# source ~/.bash_profile
# source ~/.bashrc
#exec $SHELL -l # 再読み込み

echo "setting tmux"
tmux source-file ~/.tmux.conf


echo "End setting of dotfiles"

