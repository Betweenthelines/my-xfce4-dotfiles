#!/bin/bash
#xfce wallpaper#
SCREEN=$(xrandr --listactivemonitors | awk 'END {print $1}' | tr -d :)
MONITOR=$(xrandr --listactivemonitors | awk -F ' ' 'END {print $2}' | tr -d \*+)
#WALLPAPER
xfconf-query --channel xfce4-desktop --property /backdrop/screen${SCREEN}/monitor${MONITOR}/workspace0/last-image --set ~/Pictures/wall/26.jpg

##xfce icons
xfconf-query -c xsettings -p /Net/IconThemeName -s Vimix-Black-dark

##xfce style
xfconf-query -c xsettings -p /Net/ThemeName -s Nordic-Polar-standard-buttons

##xfce cursor
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s Qogir-manjaro

##xfce Fonts
xfconf-query -c xsettings -p /Gtk/FontName -s 'Source Code Pro for Powerline Semi-Bold Italic 12'

##windows tweaks
xfconf-query -c xfwm4 -p /general/theme -s Nordic-bluish-accent-v40
xfconf-query -c xfwm4 -p /general/title_font -s "Sans Bold 10"

## terminal theme since 2023
xfconf-query -c xfce4-terminal -p /color-background -s '#353C4A'
xfconf-query -c xfce4-terminal -p /color-foreground -s '#F8F8F2'
xfconf-query -c xfce4-terminal -p /color-cursor -s '#F8F8F2'
xfconf-query -c xfce4-terminal -p /color-palette -s '#21222C;#FF5555;#50FA7B;#F1FA8C;#BD93F9;#FF79C6;#8BE9FD;#F8F8F2;#6272A4;#FF6E6E;#69FF94;#FFFFA5;#D6ACFF;#FF92DF;#A4FFFF;#FFFFFF'

##polybar
cd ~/.config/polybar
sed -i -e 's/BG =.*/BG =  #aa353C4A/g' 	config.ini
sed -i -e 's/FG =.*/FG = #C4C7C5/g' 	config.ini

pkill polybar && ./launch.sh &
