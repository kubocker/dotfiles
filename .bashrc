# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions


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

    # mac
    if [ "$(uname)" = 'Darwin' ]; then
        #export LSCOLORS=xbfxcxdxbxegedabagacad  #RED
        #export LSCOLORS=xcfxcxdxbxegedabagacad #GREEN
        #export LSCOLORS=xdfxcxdxbxegedabagacad #YELLOW
        export LSCOLORS=xefxcxdxbxegedabagacad
        #export LSCOLORS=xffxcxdxbxegedabagacad
        #export LSCOLORS=xgfxcxdxbxegedabagacad
        #export LSCOLORS=xhfxcxdxbxegedabagacad
        alias ls='ls -G'

        PS1="${TITLEBAR}${LIGHTGREEN}${BASE}${WHITE}:${BLUE}\W${GREEN}\$(parse_git_branch)${BLUE}\$${WHITE} "

    # linux
    else
        alias ls='ls --color=auto'

        PS1="${TITLEBAR}${LIGHTPURPLE}${BASE}${WHITE}:${BLUE}\W${GREEN}\$(parse_git_branch)${BLUE}\$${WHITE} "
    fi
}
promps

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# alias
alias ll='`ls | fzf | awk '\''{ print $9 }'\''`'
alias hh='`history | fzf | awk '\''{ print $1 }'\''`'

#tmux
