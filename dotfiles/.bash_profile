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

# anyenv
# export ANYENV_ROOT="$HOME/.anyenv"
# export PATH="$ANYENV_ROOT/bin:$PATH"
# eval "$(anyenv init -)"

# direnv
eval "$(direnv hook bash)"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# nodenv
export NODENV_ROOT="$HOME/.nodenv"
export PATH="$NODENV_ROOT/bin:$PATH"
eval "$(nodenv init -)"

# jenv
# export JENV_ROOT="$HOME/.jenv"
# export PATH="$JENV_ROOT/bin:$PATH"
# eval "$(jenv init -)"

# goenv
export GOPATH=$HOME/.go
export GOENV_ROOT="$HOME/.goenv"
export PATH=$GOENV_ROOT/bin:$PATH
eval "$(goenv init -)"

# rbenv
export RBENV_ROOT="$HOME/.rbenv"
export PATH="$RBENV_ROOT/bin:$PATH"
eval "$(rbenv init -)"

# phpenv
export PHPENV_ROOT="$HOME/.phpenv"
export PATH="$PHPENV_ROOT/bin:$PATH"
eval "$(phpenv init -)"

# pear
## export PATH="$HOME/pear/bin:$PATH"
# composer
## export PATH=~/.composer/vendor/bin:$PATH
# valet
## export PATH=$PATH:~/.composer/vendor/bin

# rust
## export PATH="$HOME/.cargo/bin:$PATH"
## export PTOOLSPATH=/Users/kubocker/.phalcon-devtools/
## export PATH=$PATH:/Users/kubocker/.phalcon-devtools

# flutter
export FLUTTER_ROOT="$HOME/flutter"
export PATH="$FLUTTER_ROOT/bin:$PATH"

# Android SDK のパス
export ANDROID_HOME=/Users/kubocker/Library/Android/sdk
export ANDROID_SDK_ROOT=/Users/kubocker/Library/Android/sdk
export ANDROID_AVD_HOME=/Users/kubocker/.android/avd
export PATH=$ANDROID_SDK_ROOT/build-tools/26.0.2:$PATH
