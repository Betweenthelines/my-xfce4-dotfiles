#!/bin/bash
#xfce wallpaper#
SCREEN=$(xrandr --listactivemonitors | awk 'END {print $1}' | tr -d :)
MONITOR=$(xrandr --listactivemonitors | awk -F ' ' 'END {print $2}' | tr -d \*+)
#WALLPAPER
xfconf-query --channel xfce4-desktop --property /backdrop/screen${SCREEN}/monitor${MONITOR}/workspace0/last-image --set ~/Pictures/wall/FFXIII.png

##xfce icons
xfconf-query -c xsettings -p /Net/IconThemeName -s Crule-dark

##xfce style
xfconf-query -c xsettings -p /Net/ThemeName -s Arc-Dark-solid

##xfce cursor
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s Qogir-manjaro

##xfce Fonts
xfconf-query -c xsettings -p /Gtk/FontName -s 'Source Code Pro for Powerline Semi-Bold Italic 12' 

##windows tweaks
xfconf-query -c xfwm4 -p /general/theme -s Nelio-Red-Slimmer
xfconf-query -c xfwm4 -p /general/title_font -s "Sans Bold 1"

## terminal theme since 2023
xfconf-query -c xfce4-terminal -p /color-background -s '#2F343F'
xfconf-query -c xfce4-terminal -p /color-foreground -s '#D8DEE9'
xfconf-query -c xfce4-terminal -p /color-cursor -s '#D8DEE9'
xfconf-query -c xfce4-terminal -p /color-palette -s '#3B4252;#BF616A;#A3BE8C;#EBCB8B;#81A1C1;#B48EAD;#88C0D0;#E5E9F0;#647390;#BF616A;#A3BE8C;#EBCB8B;#81A1C1;#B48EAD;#8FBCBB;#ECEFF4'

##polybar
cd ~/.config/polybar 
sed -i -e 's/BG =.*/BG =  #2f343f/g' 	config.ini
sed -i -e 's/FG =.*/FG = #C4C7C5/g' 	config.ini

pkill polybar && ./launch.sh &
