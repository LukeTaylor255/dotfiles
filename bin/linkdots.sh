#!/bin/bash

# link bash configuration
if [ -f ~/etc/bash/.bashrc ] && [ -f ~/.bashrc ] && [ ! -L ~/.bashrc ]
then
    cp ~/.bashrc ~/.bashrc.old
    rm ~/.bashrc
fi

ln -s ~/etc/bash/.bashrc ~/.bashrc

# link zsh configuration
ln -s ~/etc/zsh/.zshrc ~/.zshrc

# link p10k configuration
ln -s ~/etc/zsh/.p10k.zsh ~/.p10k.zsh

# link oh-my-zsh configuration
ln -s ~/etc/zsh/.oh-my-zsh/ ~/.oh-my-zsh

# link alacritty settings
ln -s ~/etc/alacritty/alacritty.yml ~/.alacritty.yml

# link vim colors and plugins
ln -s ~/etc/vim/.vim ~/.vim

# link vimrc
ln -s ~/etc/vim/.vimrc ~/.vimrc

# link git settings
ln -s ~/etc/git/.gitattributes ~/.gitattributes
ln -s ~/etc/git/.gitconfig ~/.gitconfig
ln -s ~/etc/git/.gitignore ~/.gitignore

# link VS Code settings
ln -s ~/etc/vscode/ ~/.vscode
