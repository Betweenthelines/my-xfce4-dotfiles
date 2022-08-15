#!/bin/bash


##Naughty wallpaper##

#xfce wallpaper#

##killall -HUP xfdesktop

xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP1/workspace0/last-image -s ~/Pictures/wall/10.png
#feh --bg-fill  '~/Pictures/wall/10.png'


##xfce icons
xfconf-query -c xsettings -p /Net/IconThemeName -s breeze

##xfce style
xfconf-query -c xsettings -p /Net/ThemeName -s Arc-Dark

##xfce cursor
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s Qogir-manjaro


##xfce Fonts
xfconf-query -c xsettings -p /Gtk/FontName -s 'Source Code Pro for Powerline Semi-Bold Italic 12' 

##windows tweaks
xfconf-query -c xfwm4 -p /general/theme -s Arc-Dark
xfconf-query -c xfwm4 -p /general/title_font -s "Sans Bold 10"

##terminal-dark
cd ~/.config/xfce4/terminal/	
sed -i -e 's/ColorForeground=.*/ColorForeground=#F8F8F2/g' 	terminalrc
sed -i -e 's/ColorBackground=.*/ColorBackground=#353C4A/g' 	terminalrc
sed -i -e 's/ColorCursor=.*/ColorCursor=#F8F8F2/g' 			terminalrc
sed -i -e 's/ColorPalette=.*/ColorPalette=#21222C;#FF5555;#50FA7B;#F1FA8C;#BD93F9;#FF79C6;#8BE9FD;#F8F8F2;#6272A4;#FF6E6E;#69FF94;#FFFFA5;#D6ACFF;#FF92DF;#A4FFFF;#FFFFFF/g' terminalrc


## alacritty
cd ~/.config/alacritty
sed -i -e 's/background:.*/background: "#353C4A"/g'  colors.yml
sed -i -e 's/foreground:.*/foreground: "#F3F6E3"/g' 	colors.yml


##polybar of bspwm
cd ~/.config/bspwm/polybar
sed -i -e 's/BG =.*/BG =  #353C4A/g' 	config.ini
sed -i -e 's/FG =.*/FG = #C4C7C5/g' 	config.ini
##polybar
cd ~/.config/polybar 
sed -i -e 's/BG =.*/BG =  #353C4A/g' 	config.ini
sed -i -e 's/FG =.*/FG = #C4C7C5/g' 	config.ini

pkill polybar && ./launch.sh &















