#!/bin/bash
#xfce wallpaper#
SCREEN=$(xrandr --listactivemonitors | awk 'END {print $1}' | tr -d :)
MONITOR=$(xrandr --listactivemonitors | awk -F ' ' 'END {print $2}' | tr -d \*+)
#WALLPAPER
xfconf-query --channel xfce4-desktop --property /backdrop/screen${SCREEN}/monitor${MONITOR}/workspace0/last-image --set ~/Pictures/wall/35.jpg

##xfce icons
xfconf-query -c xsettings -p /Net/IconThemeName -s Everforest-Dark

##xfce style
xfconf-query -c xsettings -p /Net/ThemeName -s Everforest-Dark-Borderless

##xfce cursor
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s Breeze_Snow 

##xfce Fonts
xfconf-query -c xsettings -p /Gtk/FontName -s 'Source Code Pro for Powerline Semi-Bold Italic 12' 

##windows tweaks
xfconf-query -c xfwm4 -p /general/theme -s Everforest-Dark-Borderless 
xfconf-query -c xfwm4 -p /general/title_font -s "Sans Bold 10"

## terminal theme since 2023
xfconf-query -c xfce4-terminal -p /color-background -s '#1e2327'
xfconf-query -c xfce4-terminal -p /color-foreground -s '#A7080'
xfconf-query -c xfce4-terminal -p /color-palette -s '#1d2021;#cc241d;#98971a;#d79921;#458588;#b16286;#689d6a;#a89984;#928374;#fb4934;#b8bb26;#fabd2f;#83a598;#d3869b;#8ec07c;#ebdbb2'
xfconf-query -c xfce4-terminal -p /color-cursor -s x

##polybar
cd ~/.config/polybar 
sed -i -e 's/BG =.*/BG = #1e2327/g' 	config.ini
sed -i -e 's/FG =.*/FG = #A7080/g' 	config.ini
sed -i -e 's/BORDER =.*/BORDER = #283339/g' 	config.ini

pkill polybar && ./launch.sh &
