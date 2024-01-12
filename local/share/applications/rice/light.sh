#!/bin/bash
#xfce wallpaper#
SCREEN=$(xrandr --listactivemonitors | awk 'END {print $1}' | tr -d :)
MONITOR=$(xrandr --listactivemonitors | awk -F ' ' 'END {print $2}' | tr -d \*+)
#WALLPAPER
xfconf-query --channel xfce4-desktop --property /backdrop/screen${SCREEN}/monitor${MONITOR}/workspace0/last-image --set ~/Pictures/wall/coffee-1_FHD.jpg

##xfce icons
xfconf-query -c xsettings -p /Net/IconThemeName -s Qogir-ubuntu

##xfce style
xfconf-query -c xsettings -p /Net/ThemeName -s light-like-pastel

##xfce cursor
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s Qogir-manjaro

##xfce Fonts
xfconf-query -c xsettings -p /Gtk/FontName -s 'Source Code Pro for Powerline Semi-Bold Italic 12'

##windows tweaks
xfconf-query -c xfwm4 -p /general/theme -s light-like-pastel
xfconf-query -c xfwm4 -p /general/title_font -s "Sans Bold 10"

## terminal theme since 2023
xfconf-query -c xfce4-terminal -p /color-background -s '#FEFEFE'
xfconf-query -c xfce4-terminal -p /color-foreground -s '#c7ccd1'
xfconf-query -c xfce4-terminal -p /color-palette -s  '#efecf4;#be4678;#2a9292;#a06e3b;#576ddb;#955ae7;#398bc6;#585260;#7e7887;#be4678;#2a9292;#a06e3b;#576ddb;#955ae7;#398bc6;#19171c'
xfconf-query -c xfce4-terminal -p /color-cursor -s x

##polybar
cd ~/.config/polybar
sed -i -e 's/BG =.*/BG =  #aa0C0E14/g' 	config.ini
sed -i -e 's/FG =.*/FG = #C4C7C5/g' 	config.ini

pkill polybar && ./launch.sh &
