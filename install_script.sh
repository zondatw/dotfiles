#!/bin/bash

#cp script
cp .zshrc ~/.
cp .tmux.conf ~/.

yay -S zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# vim setup
cp .vimrc ~/.
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Please type :PluginInstall in vim"

