#!/bin/bash

# Set user variable
username=$(whoami)

# Chrome
sudo -u $username mkdir old
for ICONSIZE in {16,22,24,32,48,64,128,256}
do
  sudo -u $username mkdir old/${ICONSIZE}x${ICONSIZE}
  cp /usr/share/icons/hicolor/${ICONSIZE}x${ICONSIZE}/apps/google-chrome.png old/${ICONSIZE}x${ICONSIZE}
  convert chrome-orig.png -resize ${ICONSIZE}x${ICONSIZE}\> /usr/share/icons/hicolor/${ICONSIZE}x${ICONSIZE}/apps/google-chrome.png
done

