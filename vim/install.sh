#!/bin/bash

# Set user variable
username="$SUDO_USER"

# Install cURL
apt-get install curl

# Copy vimrc to home directory
sudo cp vimrc ~/.vimrc

# Make directories which vimrc utilizes
sudo mkdir -p ~/.vim/{autoload,backup,bundle,undo,swap}

# Download pathogen; a vim package handler
sudo curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Vim 
apt-get install vim

# Download CTags
apt-get install ctags

# Plugins

# Vim-Fugitive 
sudo git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive

# NERDTree
sudo git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

# GruvBox
sudo git clone https://github.com/morhetz/gruvbox.git ~/.vim/bundle/gruvbox
