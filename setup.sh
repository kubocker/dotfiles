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
    .bowerrc
    .gvimrc
    .fabricrc
    .pypi
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
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null ; brew install caskroom/cask/brew-cask 2> /dev/null
    
    brew update

    echo "Brewfile....."
    brew tap Homebrew/bundle
    brew tap caskroom/cask
    brew tap pivotal/tap
    brew tap ethereum/ethereum
    brew bundle

    # Downloads 管理 (local)
    mkdir $HOME/Downloads/dmgs
    mkdir $HOME/Downloads/documents
    mkdir $HOME/Downloads/imgs

# Linux
else
    # CentOS
    echo "This is $(uname -s)"
    echo "installing apps..."
    sudo yum install -y git \
                        vim --with-python3 --without-python --with-lua \
                        patch httpd epel-release.noarch the_silver_searcher \
                        tig lsof jq tmux peco \
                        wget \
                        gcc zlib-devel bzip2 bzip2-devel readline readline-devel sqlite sqlite-devel openssl openssl-devel ctags \
                        lua-devel ncurses-devel \
                        ansible \
                        heroku

fi

echo 'Installing... controlling language versions'
# pyenv
git clone https://github.com/yyuu/pyenv.git ~/.pyenv

# rbenv
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

# jenv
git clone https://github.com/gcuisinier/jenv.git ~/.jenv
## jenv add $(/usr/libexec/java_home -v 1.8)

# nvm
# curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.26.1/install.sh | bash

# nodenv
git clone git://github.com/nodenv/nodenv.git ~/.nodenv
git clone https://github.com/nodenv/node-build.git ~/.nodenv/plugins/node-build


# SDKMAN
curl -s https://get.sdkman.io | bash
source "/Users/kubocker/.sdkman/bin/sdkman-init.sh"
sdk selfupdate force
sdk install kotlin
sdk install maven
sdk install springboot
sdk install sbt
sdk install scala
sdk install spark
sdk install leiningen


# nim
git clone https://github.com/nim-lang/nimble.git ~/.nimble
cd ~/.nimble
nim c src/nimble
src/nimble install

# stack -> haskell
curl -sSL https://get.haskellstack.org/ | sh

# phpenv
## curl -L https://raw.github.com/CHH/phpenv/master/bin/phpenv-install.sh | bash
## git clone git://github.com/CHH/php-build.git ~/.phpenv/plugins/php-build
# swiftenv
## git clone https://github.com/kylef/swiftenv.git ~/.swiftenv
# goenv
## git clone https://github.com/wfarr/goenv.git ~/.goenv

echo 'git prompt'
# git-prompt
if [ ! -e ~/.git-prompt.sh ]; then
  curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
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
