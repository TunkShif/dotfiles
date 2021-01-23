# file operation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias rmf="rm -rf"
alias cp="cp -v"
alias mv="mv -v"
alias rm="rm -v"
alias del="gio trash"
alias tree="gio tree"
alias chx="chmod +x"
alias open="exo-open"
alias empty-trash="gio trash --empty"
alias cot="pygmentize"

# terminal
alias q="exit"
alias quit="exit"
alias h="history"
alias clr="clear"
alias xcp="xclip -selection 'clipboard'"
alias pi="ping -c 3 baidu.com"

alias L="less"
alias H="head"
alias G="grep"

alias vi="nvim"
alias vim="nvim"

alias pas="sudo pacman -S"
alias pass="sudo pacman -Ss"
alias par="sudo pacman -Rsn"
alias pasyu="sudo pacman -Syu"
alias paq="sudo pacman -Q"
alias yas="yay -S"
alias yass="yay -Ss"

alias set-proxy="export ALL_PROXY=http://127.0.0.1:7890"
alias unset-proxy="unset ALL_PROXY"

# quick edit
alias edit-zshrc="$EDITOR ~/.zshrc"
alias edit-i3-config="$EDITOR ~/.config/i3/config"
alias reload-zsh-config="source ~/.zshrc"

function mkd() {
    mkdir -p "$@" && cd "$@"
}

function cdl() {
    cd "$@" && ls
}
