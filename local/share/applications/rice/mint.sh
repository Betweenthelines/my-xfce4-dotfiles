#!/bin/bash
#xfce wallpaper#
SCREEN=$(xrandr --listactivemonitors | awk 'END {print $1}' | tr -d :)
MONITOR=$(xrandr --listactivemonitors | awk -F ' ' 'END {print $2}' | tr -d \*+)
#WALLPAPER
xfconf-query --channel xfce4-desktop --property /backdrop/screen${SCREEN}/monitor${MONITOR}/workspace0/last-image --set ~/Pictures/wall/wallpaper2you_462909.jpg

##xfce icons
xfconf-query -c xsettings -p /Net/IconThemeName -s Mint-L

##xfce style
xfconf-query -c xsettings -p /Net/ThemeName -s Mint-Y-Dark

##xfce cursor
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s Qogir-manjaro

##xfce Fonts
xfconf-query -c xsettings -p /Gtk/FontName -s 'Source Code Pro for Powerline Semi-Bold Italic 12'

##windows tweaks
xfconf-query -c xfwm4 -p /general/theme -s Mint-Y-Dark
xfconf-query -c xfwm4 -p /general/title_font -s "Sans Bold 10"

## terminal theme since 2023
xfconf-query -c xfce4-terminal -p /color-background -s '#3c953c953c95'
xfconf-query -c xfce4-terminal -p /color-foreground -s x
xfconf-query -c xfce4-terminal -p /color-cursor -s '#867f81c281c2'
xfconf-query -c xfce4-terminal -p /color-palette -s '#000000;#cc0000;#4e9a06;#c4a000;#3465a4;#75507b;#06989a;#d3d7cf;#8E9F7D;#ef2929;#8ae234;#fce94f;#739fcf;#ad7fa8;#34e2e2;#eeeeec'

##polybar
cd ~/.config/polybar
sed -i -e 's/BG =.*/BG =  #3c3c3c/g' 	config.ini
sed -i -e 's/FG =.*/FG = #C4C7C5/g' 	config.ini

pkill polybar && ./launch.sh &
