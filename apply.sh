#!/bin/bash

function ensure_file() {
    echo $1 $2

    echo "mkdir -p" $HOME/$1;
    mkdir -p $HOME/$1;

    echo "rm" $HOME/$1/$2;
    rm $HOME/$1/$2 || true;

    echo "ln -s" $PWD/$1/$2 $HOME/$1/$2;
    ln -s $PWD/$1/$2 $HOME/$1/$2;

	echo "";
}

ensure_file . .vimrc
ensure_file . .xinitrc
ensure_file . .Xresources

ensure_file .config/i3 config
ensure_file .config/i3status config

ensure_file .config/termite config

#sbin scripts
sudo cp scripts/brightnessctl /usr/local/bin/brightnessctl
