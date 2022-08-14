#!/bin/bash

# setting
kbk_dir=Develop/kubocker/dotfiles

# start
echo "Start setting of dotfiles..."

dotfiles=(
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
source $HOME/$kbk_dir/app/_install.sh

# asdf
if [ ! -e ./asdf ]; then
  git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2
  echo '. $HOME/.asdf/asdf.sh' >> ~/.bashrc
fi

# rust
if [ ! -e ~/.cargo ]; then
  curl https://sh.rustup.rs -sSf | sh
fi

# haskell
if [ ! -e ~/.stack ]; then
  curl -sSL https://get.haskellstack.org/ | sh
fi

# nim
if [ ! -e ~/.nimble ]; then
  git clone https://github.com/nim-lang/nimble.git ~/.nimble
fi

# startship
curl -sS https://starship.rs/install.sh | sh

# wasmer
if [ ! -e ~/.wasmer ]; then
  curl https://get.wasmer.io -sSfL | sh
fi

echo 'firebase tools'
curl -sL firebase.tools | bash


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
eval '$(starship init bash)'


echo 'Checking...'
if [ -e $HOME/.vim ]; then
    echo 'rm -rf ~/.vim; then mkdir ~/.vim'
    rm -rf $HOME/.vim
fi

echo "Installing vim-plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Installing Substrate"
# curl https://getsubstrate.io -sSf | bash


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
source ~/.bashrc
#exec $SHELL -l # 再読み込み


echo 'setup config....'
# source $HOME/$kbk_dir/config/_setup.sh


echo "End setting of dotfiles"
