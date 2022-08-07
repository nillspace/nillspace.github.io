#!/bin/zsh -x
PF="https://github.com"
P=$(pwd)
FM="$P/bin/list-vim-plugins-url.txt"
rm -rf "$P/pack"
mkdir pack && cd pack
pwd

cat $FM | \
while read CMD; do
    echo $CMD | tr -d"\" -f1| mkdir
    echo $CMD | tr -d"\" -f1| cd
    git clone "$PF/$CMD" $P/pack/$CMD
    break
done
cd pack
