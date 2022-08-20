#!/bin/bash


#xfce wallpaper#

##killall -HUP xfdesktop

xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP1/workspace0/last-image -s ~/Pictures/wall/Robust.jpg
#feh --bg-fill '~/Pictures/wall/Robust.jpg'


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

##terminal-dark
cd ~/.config/xfce4/terminal/	
sed -i -e 's/ColorForeground=.*/ColorForeground=#D8DEE9/g' 	terminalrc
sed -i -e 's/ColorBackground=.*/ColorBackground=#2F343F/g' 	terminalrc
sed -i -e 's/ColorCursor=.*/ColorCursor=#D8DEE9/g' 			terminalrc
sed -i -e 's/ColorPalette=.*/ColorPalette=#3B4252;#BF616A;#A3BE8C;#EBCB8B;#81A1C1;#B48EAD;#88C0D0;#E5E9F0;#647390;#BF616A;#A3BE8C;#EBCB8B;#81A1C1;#B48EAD;#8FBCBB;#ECEFF4/g' terminalrc


## alacritty
cd ~/.config/alacritty
sed -i -e 's/background:.*/background: "#2F343F"/g'  colors.yml
sed -i -e 's/foreground:.*/foreground: "#F3F6E3"/g' 	colors.yml

##polybar of bspwm
cd ~/.config/bspwm/polybar
sed -i -e 's/BG =.*/BG =  #2f343f/g' 	config.ini
sed -i -e 's/FG =.*/FG = #C4C7C5/g' 	config.ini


##polybar
cd ~/.config/polybar 
sed -i -e 's/BG =.*/BG =  #2f343f/g' 	config.ini
sed -i -e 's/FG =.*/FG = #C4C7C5/g' 	config.ini

pkill polybar && ./launch.sh &

















