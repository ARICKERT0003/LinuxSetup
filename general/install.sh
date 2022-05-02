#!/bin/bash

# Set user variable
username=$SUDO_USER
boost_path="/usr/local/"

echo "======================="
echo "Setting up file system"
echo "======================="
mkdir ~/Downloads 

echo "======================="
echo "Installing g++ and gcc"
echo "======================="
apt install g++ build-essential

# CMake
echo "======================="
echo "Installing CMake"
echo "======================="
apt-get install cmake
apt-get install cmake-curses-gui

# Doxygen
echo "======================="
echo "Installing Doxygen"
echo "======================="
apt-get install doxygen

# Node.js
echo "======================="
echo "Installing Node.js"
echo "======================="
#curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
#apt-get install nodejs -y 
#apt-get install nodejs-dev node-gyp libssl1.0-dev
#apt install npm

echo "======================="
echo "Installing Boost"
echo "======================="
#wget -O ~/Downloads/boost_1_77_0.tar.gz https://sourceforge.net/projects/boost/files/boost/1.77.0/boost_1_77_0.tar.gz/download
#tar xzvf ~/Downloads/boost_1_77_0.tar.gz -C $boost_path

# Symbolically link header files
ln -s "${boost_path}boost_1_77_0/boost" "${boost_path}/include/boost"

# Symbolically link cpp and library files
ln -s "${boost_path}boost_1_77_0/libs" "${boost_path}/lib/boost"

echo "======================="
echo "Installing Git"
echo "======================="
# Git
apt install git

# Set Git User
git config --global user.email "ARICKERT0003@gmail.com"
git config --global user.name "Alex"
git config --global core.editor "vim"

# Git Book
npm install gitbook-cli -g

echo "======================="
echo "Installing Spotify"
echo "======================="
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

apt-get update && sudo apt-get install spotify-client
