#!/bin/bash

sudo apt update
sudo apt install -y vim curl git fonts-powerline
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ~/.vim/colors
cp dracula.vim ~/.vim/colors/dracula.vim
cp .vimrc ~/.vimrc
vim +'PlugInstall --sync' +qa
