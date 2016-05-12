#!/bin/bash

#cp script
cp .bashrc ~/.
cp .tmux.conf ~/.

# vim setup
cp .vimrc ~/.
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "Please type :PluginInstall in vim"

# vim color
test -d ~/.vim && mkdir ~/.vim/colors || (mkdir ~/.vim && mkdir ~/.vim/colors)
cp molokai.vim ~/.vim/colors/

