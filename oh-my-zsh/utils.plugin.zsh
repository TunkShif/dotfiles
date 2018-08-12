# file operation
alias ..="cd .."
alias rmf="rm -rf"
alias cp="cp -v"
alias mv="mv -v"
alias rm="rm -v"
alias del="gio trash"
alias tree="gio tree"
alias chx="chmod +x"
alias open="exo-open"

# terminal
alias q="exit"
alias quit="exit"
alias h="history"
alias clr="clear"
alias xcp="xclip -selection 'clipboard'"
alias pi="ping -c 3 baidu.com"

alias L="less"
alias H="head"

# aria2
alias ad="aria2c"
alias adr="aria2c --conf-path=/home/tunkshif/.aria2/aria2-rpc.conf"

# local applications
alias bdp="/home/tunkshif/.local/share/baidupcs-go/BaiduPCS-Go"
alias chromium-proxy='chromium --proxy-server="socks5://127.0.0.1:1080" &'

# pacman & yaourt
alias xu="sudo pacman -Syu"
alias xi="sudo pacman -S"
alias xr="sudo pacman -Rsn"
alias xf="sudo pacman -Ss"
alias xq="sudo pacman -Q"
alias xqi="sudo pacman -Qi"
alias xuf="yaourt -Ss"
alias xui="yaourt -S"

# quick edit
alias edit-zshrc="$EDITOR ~/.zshrc"
alias edit-utils-plugin="$EDITOR ~/.oh-my-zsh/custom/plugins/utils/utils.plugin.zsh"
alias edit-i3-config="$EDITOR ~/.config/i3/config"
alias edit-vim-config="$EDITOR ~/.vimrc"
alias reload-zsh-config="source ~/.zshrc"

function mkd() {
    mkdir -p "$@" && cd "$@"
}

