#!/bin/bash

# link bash configuration
if [ -f ~/etc/bash/.bashrc ] && [ -f ~/.bashrc ] && [ ! -L ~/.bashrc ]
then
    cp ~/.bashrc ~/.bashrc.old
    rm ~/.bashrc
    ln -s ~/etc/bash/.bashrc ~/.bashrc
fi

# link zsh configuration
ln -s ~/etc/zsh/.zshrc ~/.zshrc

# link oh-my-zsh configuration
ln -s ~/etc/zsh/.oh-my-zsh/ ~/.oh-my-zsh
ln -s ~/etc/alacritty/alacritty.yml ~/.alacritty.yml
ln -s ~/etc/vim/.vim ~/.vim
ln -s ~/etc/vim/.vimrc ~/.vimrc
ln -s ~/etc/git/.gitattributes ~/.gitattributes
ln -s ~/etc/git/.gitconfig ~/.gitconfig
ln -s ~/etc/git/.gitignore ~/.gitignore
ln -s ~/etc/vscode/ ~/.vscode
