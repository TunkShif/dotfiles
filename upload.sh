#/bin/bash

# i3-wm
cp -v ~/.config/i3/* ./i3/

# vim & neovim
cp -v ~/.vim/*.vim ./vim/

# oh-my-zsh
cp -v ~/.zshrc ./oh-my-zsh/
cp -v ~/.oh-my-zsh/custom/plugins/utils/utils.plugin.zsh ./oh-my-zsh/

# upload
git add .
git commit -m "Updated $(date '+%Y-%m-%d %H:%M:%S')"
git push origin master

