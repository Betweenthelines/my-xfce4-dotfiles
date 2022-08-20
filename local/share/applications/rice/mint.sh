#!/bin/bash

#xfce wallpaper#

##killall -HUP xfdesktop

xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP1/workspace0/last-image -s ~/Pictures/wall/wallpaper2you_462909.jpg

feh --bg-fill  ~/Pictures/wall/wallpaper2you_462909.jpg

##xfce icons
xfconf-query -c xsettings -p /Net/IconThemeName -s Mint-Y-Dark

##xfce style
xfconf-query -c xsettings -p /Net/ThemeName -s Mint-Y-Dark

##xfce cursor
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s Qogir-manjaro


##xfce Fonts
xfconf-query -c xsettings -p /Gtk/FontName -s 'Source Code Pro for Powerline Semi-Bold Italic 12' 

##windows tweaks
xfconf-query -c xfwm4 -p /general/theme -s Mint-Y-Dark
xfconf-query -c xfwm4 -p /general/title_font -s "Sans Bold 10"



## terminal theme
cd ~/.config/xfce4/terminal/
sed -i -e 's/ColorForeground=.*/ColorForeground=#x/g' 	terminalrc
sed -i -e 's/ColorBackground=.*/ColorBackground=#3c953c953c95/g' 	terminalrc
sed -i -e 's/ColorCursor=.*/ColorCursor=#867f81c281c2/g' 			terminalrc
sed -i -e 's/ColorPalette=.*/ColorPalette=#000000;#cc0000;#4e9a06;#c4a000;#3465a4;#75507b;#06989a;#d3d7cf;#8E9F7D;#ef2929;#8ae234;#fce94f;#739fcf;#ad7fa8;#34e2e2;#eeeeec/g' terminalrc


## alacritty
cd ~/.config/alacritty
sed -i -e 's/background:.*/background: "#3c3c3c"/g'  colors.yml
sed -i -e 's/foreground:.*/foreground: "#F3F6E3"/g' 	colors.yml

##polybar of bspwm
cd ~/.config/bspwm/polybar
sed -i -e 's/BG =.*/BG =  #3c3c3c/g' 	config.ini
sed -i -e 's/FG =.*/FG = #C4C7C5/g' 	config.ini

##polybar
cd ~/.config/polybar 
sed -i -e 's/BG =.*/BG =  #3c3c3c/g' 	config.ini
sed -i -e 's/FG =.*/FG = #C4C7C5/g' 	config.ini

pkill polybar && ./launch.sh &
