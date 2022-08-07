# VIMa native package managment

Starting vim, version 8, packages can be managed naitivly.
Check out `:help packages` for the whole thing, but to make the story short:

# init plugin pack fs structure
`take $HOME/.vim/pack
take your-pack-namespace-dir
take start
`
# clone vim plugin repos

Note: plugins that are nested ini directories  deeper than `start/`, will not be loaded by default. [rfc](/rfc)

```
cat << EOF > list.txt
scrooloose/nerdcommenter
scrooloose/nerdtree
EOF

PF="https://github.com"
FM="$(pwd)/list.txt"

cat $FM | \
while read CMD; do
    PLUGIN_NAME=$(echo $CMD | tr -d"\" -f1)
    PLUGIN_URL="$PF/$CMD"
    git clone $PLUGIN_URL $PLUGIN_NAME
    break
done
rm $FM
```

# validate plugins loading

Open `vim` and check what have been loaded by running one following:
* :scriptfiles`
* `:help local-additions`
