# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
#alias ls='ls -G'
#alias la='ls -a'
#alias ll='ls -l'
#export LS_COLORS="no=00:fi=00:di=01;36:ln=01;34"

# mac
if [ "$(uname)" = 'Darwin' ]; then
    export LSCOLORS=xbfxcxdxbxegedabagacad  #RED
    #export LSCOLORS=xcfxcxdxbxegedabagacad #GREEN
    #export LSCOLORS=xdfxcxdxbxegedabagacad #YELLOW
    #export LSCOLORS=xefxcxdxbxegedabagacad
    #export LSCOLORS=xffxcxdxbxegedabagacad
    #export LSCOLORS=xgfxcxdxbxegedabagacad
    #export LSCOLORS=xhfxcxdxbxegedabagacad
    alias ls='ls -G'

# linux
else
    eval `dircolors ~/.colorrc`
    alias ls='ls --color=auto'
fi

function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}
function promps {
    # 色は気分で変えたいかもしれないので変す宣言しておく
    local BLUE="\[\e[1;34m\]"
    local RED="\[\e[1;31m\]"
    local GREEN="\[\e[0;32m\]"
    local WHITE="\[\e[00m\]"
    local GRAY="\[\e[1;37m\]"
    local LIGHTPURPLE="\[\e[1;35m\]"
    local LIGHTRED="\[\e[1;31m\]"
    local LIGHTGREEN="\[\e[1;32m\]"

    case $TERM in
        xterm*) TITLEBAR='\[\e]0;\W\007\]';;
        *)      TITLEBAR="";;
    esac
    local BASE="\u@\h"
    PS1="${TITLEBAR}${LIGHTGREEN}${BASE}${WHITE}:${BLUE}\W${GREEN}\$(parse_git_branch)${BLUE}\$${WHITE} "
}
promps

# node
export PATH=$HOME/.nodebrew/current/bin:$PATH

# tmux用対策
#echo "export TERM=xterm-256color" >> .bashrc
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#tmux

