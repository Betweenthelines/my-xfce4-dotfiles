#!/bin/bash
cp panes.sh ~/.config/xfce4/terminal/

echo "#colorscript pane only" | tee -a ~/.zshrc
echo "~/.config/xfce4/terminal/panes.sh" | tee -a ~/.zshrc
echo "#" | tee -a ~/.zshrc
