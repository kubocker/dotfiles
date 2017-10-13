# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin
export PATH
#export PATH="/usr/local/bin:$PATH"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# rbenv
export RBENV_ROOT="$HOME/.rbenv"
export PATH="$RBENV_ROOT/bin:$PATH"
eval "$(rbenv init -)"

# jenv
export JENV_ROOT="$HOME/.jenv"
export PATH="$JENV_ROOT/bin:$PATH"
eval "$(jenv init -)"

# phpenv
export PHPENV_ROOT="$HOME/.phpenv"
export PATH="$PHPENV_ROOT/bin:$PATH"
eval "$(phpenv init -)"

# pear
export PATH="$HOME/pear/bin:$PATH"
# composer
export PATH=~/.composer/vendor/bin:$PATH
# valet
export PATH=$PATH:~/.composer/vendor/bin

# nvm
export NVM_ROOT="$HOME/.nvm"
[ -s "$NVM_ROOT/nvm.sh" ] && . "$NVM_ROOT/nvm.sh"
nvm use default
npm_dir=${NVM_PATH}_modules
export NODE_PATH=$npm_dir

# swiftenv
export SWIFTENV_ROOT="$HOME/.swiftenv"
export PATH="$SWIFTENV_ROOT/bin:$PATH"
eval "$(swiftenv init -)"; 

# goenv
export PATH="$HOME/.goenv/bin:$PATH"
eval "$(goenv init -)"

# ansible
#export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kubocker/google-cloud-sdk/path.bash.inc' ]; then source '/Users/kubocker/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kubocker/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/kubocker/google-cloud-sdk/completion.bash.inc'; fi

export GOOGLE_APPLICATION_CREDENTIALS='/Users/kubocker/.config/gcloud/application_default_credentials.json'
