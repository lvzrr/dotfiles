#!/bin/bash

CONF_FOLDER="$HOME/.config/"

for item in .* *; do
    if [ $item != "syml_script.sh" ]; then
        sym="$CONF_FOLDER$item"
        echo "CREATING SYMLINK FOR $item"
        rm -fr "$sym"
        ln -s -f "$PWD/$item" "$sym"
        echo "link created [$item -> $sym]"
    fi

    if [ "$item" == ".zshrc" ]; then
        sym="$HOME/$item"
        echo "CREATING SYMLINK FOR $item"
        rm -fr "$sym"
        ln -s -f "$PWD/$item" "$sym"
        echo "link created [$item -> $sym]"
    fi
done
