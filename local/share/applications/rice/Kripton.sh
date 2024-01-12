#!/bin/bash
#xfce wallpaper#
SCREEN=$(xrandr --listactivemonitors | awk 'END {print $1}' | tr -d :)
MONITOR=$(xrandr --listactivemonitors | awk -F ' ' 'END {print $2}' | tr -d \*+)
#WALLPAPER
xfconf-query --channel xfce4-desktop --property /backdrop/screen${SCREEN}/monitor${MONITOR}/workspace0/last-image --set ~/Pictures/wall/29.jpg

##xfce icons
xfconf-query -c xsettings -p /Net/IconThemeName -s Mint-Y-Aqua

##xfce style
xfconf-query -c xsettings -p /Net/ThemeName -s Kripton

##xfce cursor
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s Qogir-manjaro

##xfce Fonts
xfconf-query -c xsettings -p /Gtk/FontName -s 'Source Code Pro for Powerline Semi-Bold Italic 12' 

##windows tweaks
xfconf-query -c xfwm4 -p /general/theme -s Sweet-Dark
xfconf-query -c xfwm4 -p /general/title_font -s "Sans Bold 10"

## terminal theme since 2023
xfconf-query -c xfce4-terminal -p /color-background -s '#15171C'
xfconf-query -c xfce4-terminal -p /color-foreground -s '#cccccc'
xfconf-query -c xfce4-terminal -p /color-palette -s '#1a1a1a;#d88568;#83a471;#b99353;#8eccdd;#b98eb2;#7c9cae;#cccccc;#767676;#d88568;#83a471;#b99353;#8eccdd;#b98eb2;#7c9cae;#f8f8f8'
xfconf-query -c xfce4-terminal -p /color-cursor -s x

##polybar
cd ~/.config/polybar 
sed -i -e 's/BG =.*/BG =  #15171C/g' 	config.ini
sed -i -e 's/FG =.*/FG = #C4C7C5/g' 	config.ini

pkill polybar && ./launch.sh &
