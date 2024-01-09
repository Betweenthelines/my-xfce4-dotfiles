#!/bin/bash
#xfce wallpaper#
xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP1/workspace0/last-image -s ~/Pictures/wall/shore.jpg

##xfce icons
xfconf-query -c xsettings -p /Net/IconThemeName -s Mint-Y-Legacy

##xfce style
xfconf-query -c xsettings -p /Net/ThemeName -s Mint-Y

##xfce cursor
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s Qogir-manjaro-dark

##xfce Fonts
xfconf-query -c xsettings -p /Gtk/FontName -s 'Source Code Pro for Powerline Semi-Bold Italic 12'

##windows tweaks
xfconf-query -c xfwm4 -p /general/theme -s Mint-Y
xfconf-query -c xfwm4 -p /general/title_font -s "Sans Bold 10"

## terminal theme since 2023
xfconf-query -c xfce4-terminal -p /color-background -s 3c953c953c95
xfconf-query -c xfce4-terminal -p /color-foreground -s c7ccd1
xfconf-query -c xfce4-terminal -p /color-cursor -s 867f81c281c2
xfconf-query -c xfce4-terminal -p /color-palette -s '#000000;#cc0000;#4e9a06;#c4a000;#3465a4;#75507b;#06989a;#d3d7cf;#8E9F7D;#ef2929;#8ae234;#fce94f;#739fcf;#ad7fa8;#34e2e2;#eeeeec'

##polybar
cd ~/.config/polybar
sed -i -e 's/BG =.*/BG = #aa232323/g' 	config.ini
sed -i -e 's/FG =.*/FG = #C4C7C5/g' 	config.ini
sed -i -e 's/BORDER =.*/BORDER = #232323/g' 	config.ini

pkill polybar && ./launch.sh &