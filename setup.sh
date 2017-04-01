#!/bin/bash

# color list
##################################################################
# Black        0;30     Dark Gray     1;30
# Red          0;31     Light Red     1;31
# Green        0;32     Light Green   1;32
# Brown/Orange 0;33     Yellow        1;33
# Blue         0;34     Light Blue    1;34
# Purple       0;35     Light Purple  1;35
# Cyan         0;36     Light Cyan    1;36
# Light Gray   0;37     White         1;37

# ex.
#RED='\033[0;31m'
#NC='\033[0m' # No Color
#printf "I ${RED}love${NC} Stack Overflow\n"]']'
#################################################################

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
    .bowerrc
    .gvimrc
	)
dir=$(pwd)

if [ $dir != $HOME/$kbk_dir ]; then
	echo "WARNING..."
	echo "change path $kbk_dir"
	return
fi

# mac
if [ $(uname -s) = 'Darwin' ]; then

    # Homebrew
    [ -z "$(which brew)" ] &&
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    echo "Updating homebrew"
    brew doctor
    brew update & upgrade

    echo "Installing brew apps now"
    brew install vim --with-python3 --without-python --with-lua \
                macvim \
                clisp \
                git tig tmux

    brew tap universal-ctags/universal-ctags
    brew install --HEAD universal-ctags

    echo "Installing brew-cask apps now"
    brew cask update
    brew cask install ccleaner iterm2 vagrant virtualbox karabiner

else
    echo "This is $(uname -s)"
    echo "installing apps..."
    sudo yum install -y git \
                        vim --with-python3 --without-python --with-lua \
                        patch httpd epel-release.noarch the_silver_searcher \
                        tig lsof jq tmux peco \
                        wget \
                        gcc zlib-devel bzip2 bzip2-devel readline readline-devel sqlite sqlite-devel openssl openssl-devel ctags


fi

echo 'Installing... controlling language versions'
# pyenv
git clone https://github.com/yyuu/pyenv.git ~/.pyenv

# rbenv
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

# jenv
git clone https://github.com/gcuisinier/jenv.git ~/.jenv

# phpenv
curl -L https://raw.github.com/CHH/phpenv/master/bin/phpenv-install.sh | bash
git clone git://github.com/CHH/php-build.git ~/.phpenv/plugins/php-build

# nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.26.1/install.sh | bash

# swiftenv
git clone https://github.com/kylef/swiftenv.git ~/.swiftenv


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
  ln -s $dir/$file $HOME/$file
done

# vim-plug
echo "Installing Vim Plugin"
vim +PlugInstall +qall

# source
echo "source ~/.bash_profile and ~/.bashrc"
source ~/.bash_profile
source ~/.bashrc
exec $SHELL -l # 再読み込み


echo "setting tmux"
tmux source-file ~/.tmux.conf

echo "End setting of dotfiles"
