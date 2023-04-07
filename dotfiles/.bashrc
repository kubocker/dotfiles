# .bashrc

# alias
alias vi='vim'
alias ll='`ls | fzf | awk '\''{ print $9 }'\''`'
alias hh='`history | fzf | awk '\''{ print $1 }'\''`'

#tmux

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!

###-tns-completion-end-###
. "$HOME/.cargo/env"
. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"

eval
__main() {
    local major="${BASH_VERSINFO[0]}"
    local minor="${BASH_VERSINFO[1]}"

    if ((major > 4)) || { ((major == 4)) && ((minor >= 1)); }; then
        source <(/usr/local/bin/starship init bash --print-full-init)
    else
        source /dev/stdin <<<"$(/usr/local/bin/starship init bash --print-full-init)"
    fi
}
__main
unset -f __main
