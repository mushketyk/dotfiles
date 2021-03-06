#!/bin/bash

if [ ! -f activate.sh ]; then
    echo "This script should be run from the .dotfiles dir"
    exit 1
fi

git submodule init
git submodule update

cd ~
ln -s .dotfiles/gitconfig .gitconfig
ln -s .dotfiles/githelpers .githelpers
ln -s .dotfiles/gitignore .gitignore
ln -s .dotfiles/vim .vim
ln -s .dotfiles/vim.d .vim.d
ln -s .dotfiles/vimrc .vimrc
ln -s .dotfiles/irbrc .irbrc
ln -s .dotfiles/zshrc .zshrc
ln -s .dotfiles/zsh_aliases .zsh_aliases

vim +PluginInstall +qall

ln -s .dotfiles/oh-my-zsh .oh-my-zsh
