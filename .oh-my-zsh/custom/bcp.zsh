export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export EDITOR="vim"

alias ve="vim ~/.vimrc"
alias ze="vim ~/.oh-my-zsh/custom/bcp.zsh"
# vimrc editing
alias ve='vim ~/.vimrc'
# # zsh profile editing
alias ze='vim ~/.zshrc'
alias zr='source ~/.zshrc'
alias reload='zr'

# # git
alias gpo='git pull origin'
alias gc='git checkout'
# # rbenv
#
# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias cls='clear'
# remap man for colorized output
man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}
