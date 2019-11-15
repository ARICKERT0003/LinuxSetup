#!/bin/bash

# Set user variable
username=$(whoami)

# Chrome
cp google-chrome.list /etc/apt/sources.list.d
sudo -u $username wget http://dl.google.com/linux/linux_signing_key.pub
apt-key add linux_signing_key.pub
apt update
apt install google-chrome-stable

