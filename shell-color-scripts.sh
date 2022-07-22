#!/bin/bash

##credits to derek taylor #distrowatch
git clone https://gitlab.com/dwt1/shell-color-scripts.git

##deleting ugly scripts imho

shopt -s extglob
cd ~/shell-color-scripts/colorscripts && rm -v !("crunchbang-mini"|"panes"|"hex"|"suckless")
shopt -u extglob

##installing scripts

cd .. && sudo make install
sudo cp completions/_colorscript /usr/share/zsh/site-functions
echo "colorscript random" ~/.zshrc




