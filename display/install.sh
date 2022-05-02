#!/bin/bash

# Set user variable
USERNAME=$SUDO_USER
DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Copy bashrc to home directory
$USERNAME cp $DIR/bashrc ~/.bashrc

# Export Gnome Terminal Settings
#sudo -u $USERNAME dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-terminal-profiles.dconf
