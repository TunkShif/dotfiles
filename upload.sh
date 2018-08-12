#/bin/bash

# config for i3
cp -v ~/.config/i3/* ./i3/

# config for vim
cp -v ~/.vim/*.vim ./vim/


# upload
git add .
git commit -m "Updated $(date '+%Y-%m-%d %H:%M:%S')"
git push origin master

