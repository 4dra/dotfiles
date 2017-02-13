#!/bin/bash

function ensure_file() {
    echo "dir: " $1 " file:" $2
    mkdir -p ~/$1;
    rm ~/$1/$2;
    ln -s ~/dotfiles/$1/$2 ~/$1/$2;
}

ensure_file . .vimrc
ensure_file . .xinitrc

ensure_file .config/i3 config
ensure_file .config/i3status config
ensure_file .config/rofi config
ensure_file .config/termite config