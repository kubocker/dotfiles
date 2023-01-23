# .bashrc

# alias
alias vi='vim'
alias ll='`ls | fzf | awk '\''{ print $9 }'\''`'
alias hh='`history | fzf | awk '\''{ print $1 }'\''`'

#tmux

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!

###-tns-completion-end-###
. "$HOME/.cargo/env"
