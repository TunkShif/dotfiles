#/bin/bash

# upload
git add .
git commit -m "Updated $(date '+%Y-%m-%d %H:%M:%S')"
git push origin master

