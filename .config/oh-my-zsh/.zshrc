export ZSH="/home/tunkshif/.oh-my-zsh"

EDITOR=nvim
ZSH_THEME="cdimascio-lambda"

plugins=(git pip adb fzf cargo rust rustup autojump tmux custom-commands)

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

