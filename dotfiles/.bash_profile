# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# git
source $HOME/.git-completion.bash
source $HOME/.git-prompt.sh


# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin
export PATH
#export PATH="/usr/local/bin:$PATH"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# nodenv
export NODENV_ROOT="$HOME/.nodenv"
export PATH="$NODENV_ROOT/bin:$PATH"
eval "$(nodenv init -)"

# jenv
export JENV_ROOT="$HOME/.jenv"
export PATH="$JENV_ROOT/bin:$PATH"
eval "$(jenv init -)"

# goenv
export GOENV_ROOT="$HOME/.goenv"
export PATH=$GOENV_ROOT/bin:$PATH
eval "$(goenv init -)"

export GOROOT="${HOME}/.goenv/${GOVERSION}/1.10.3"
export GOPATH=${HOME}
export PATH=${GOROOT}/bin:${GOPATH}/.go/bin:${PATH}

# eval "$(direnv hook bash)"

# rbenv
export RBENV_ROOT="$HOME/.rbenv"
export PATH="$RBENV_ROOT/bin:$PATH"
eval "$(rbenv init -)"

# phpenv
## export PHPENV_ROOT="$HOME/.phpenv"
## export PATH="$PHPENV_ROOT/bin:$PATH"
## eval "$(phpenv init -)"

# pear
## export PATH="$HOME/pear/bin:$PATH"
# composer
## export PATH=~/.composer/vendor/bin:$PATH
# valet
## export PATH=$PATH:~/.composer/vendor/bin

# swiftenv
## export SWIFTENV_ROOT="$HOME/.swiftenv"
## export PATH="$SWIFTENV_ROOT/bin:$PATH"
## eval "$(swiftenv init -)"; 

# rust
export PATH="$HOME/.cargo/bin:$PATH"
