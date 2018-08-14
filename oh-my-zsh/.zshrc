export ZSH=$HOME/.oh-my-zsh                                   
export EDITOR="nvim"
export PATH=$PATH:$HOME/.local/share/scripts

ZSH_THEME="lambda-mod"

plugins=(
  git
  pip
  pm
  thefuck
  utils
)

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
