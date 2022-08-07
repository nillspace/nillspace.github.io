# VIM8 native package support

Since VIM8 packages can be managed naitivly based on `:help packages` info.
# Tldr

## Init plugin pack fs structure
```
take $HOME/.vim/pack
take YOUR-PACK-NAMESPACE-DIR
take start
```
## Clone vim plugin repos

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

## Validate plugins loading

Open `vim` and check what have been loaded by running one following:
* `:scriptfiles`
* `:help local-additions`
