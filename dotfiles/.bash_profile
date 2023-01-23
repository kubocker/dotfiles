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

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init --path)"
fi

# nodenv
export NODENV_ROOT="$HOME/.nodenv"
export PATH="$NODENV_ROOT/bin:$PATH"
eval "$(nodenv init -)"


# starship
eval "$(starship init bash)"

# flutter
export FLUTTER_ROOT="$HOME/flutter"
export PATH="$FLUTTER_ROOT/bin:$PATH"
export PATH="$PATH":"$HOME/.pub-cache/bin"

# Android SDK のパス
export ANDROID_HOME=/Users/kubocker/Library/Android/sdk
export ANDROID_SDK_ROOT=/Users/kubocker/Library/Android/sdk
export ANDROID_AVD_HOME=/Users/kubocker/.android/avd
export PATH=$ANDROID_SDK_ROOT/build-tools/29.0.2:$PATH
export PATH=$PATH:~/Library/Android/sdk/build-tools/26.0.2/
export PATH=$PATH:~/Library/Android/sdk/build-tools/28.0.3/
export PATH=$PATH:~/Library/Android/sdk/build-tools/29.0.2/

export PATH="$HOME/.cargo/bin:$PATH"
. "$HOME/.cargo/env"
