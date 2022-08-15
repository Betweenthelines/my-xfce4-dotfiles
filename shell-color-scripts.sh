#!/bin/bash

##credits to derek taylor #distrowatch
git clone https://gitlab.com/dwt1/shell-color-scripts.git 

##deleting ugly scripts imho

shopt -s extglob
cd ~/my-xfce4-dotfiles/shell-color-scripts/colorscripts && rm -v !("crunchbang-mini"|"panes")
shopt -u extglob

##installing scripts

cd ~/my-xfce4-dotfiles/shell-color-scripts/ && sudo make install &&
sudo cp completions/_colorscript /usr/share/zsh/site-functions &&

echo "  " | tee -a ~/.zshrc
echo "#" | tee -a ~/.zshrc
echo "#" | tee -a ~/.zshrc
echo "colorscript random" | tee -a ~/.zshrc


