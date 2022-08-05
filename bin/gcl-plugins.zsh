#!/bin/zsh -x
PF="https://github.com"
FM=list-vim-plugins-url.txt
#cat $FM | xargs -d '\n' printf "$PF/%s\n" | xargs -P 3 git clone
#head -n2 $FM | xargs -d '\n' printf "$PF/%s" | xargs printf "git clone %s \n" | xargs echo.git


rm -rf pack
mkdir pack
cat $FM | \
while read CMD; do
    git clone "$PF/$CMD" ./pack/$CMD
done
cd pack
