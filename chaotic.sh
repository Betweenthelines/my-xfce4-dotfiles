#!/bin/bash
##chaotic AUR
sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'

##appending /etc/pacman.conf  ##
echo "#" | sudo tee -a /etc/pacman.conf
echo "#" | sudo tee -a /etc/pacman.conf
echo "[chaotic-aur]" | sudo tee -a /etc/pacman.conf
echo "Include = /etc/pacman.d/chaotic-mirrorlist " | sudo tee -a /etc/pacman.conf
