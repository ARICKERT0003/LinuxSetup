#!/bin/bash

# Set user variable
username=$(whoami)

# CMake
apt-get install cmake
apt-get install cmake-curses-gui

# Doxygen
apt-get install doxygen

# Node.js
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
apt install nodejs nodejs-dev node-gyp libssl1.0-dev
apt install npm

# Git
apt install git

# Git Book
npm install gitbook-cli -g
