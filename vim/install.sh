#!/bin/bash

# Set user variable
username=$(whoami)

# Install cURL
apt-get install curl

# Copy vimrc to home directory
sudo -u $username cp vimrc ~/.vimrc

# Make directories which vimrc utilizes
sudo -u $username mkdir -p ~/.vim/{autoload,backup,bundle,undo}

# Download pathogen; a vim package handler
sudo -u $username curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Download CTags
apt-get install ctags

# Plugins

# Vim-Fugitive 
sudo -u $username git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive

# NERDTree
sudo -u $username git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
