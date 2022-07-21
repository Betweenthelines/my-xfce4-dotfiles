#!/bin/bash

##credits to derek taylor #distrowatch
git clone https://gitlab.com/dwt1/shell-color-scripts.git
cd shell-color-scripts

##deleting ugly scripts imho

shopt -s extglob
cd ~/shell-color-scripts/colorscripts && rm -v !("crunchbang-mini"|"panes"|"hex"|"suckless")
shopt -u extglob

##installing scripts

sudo make install
cd && 







