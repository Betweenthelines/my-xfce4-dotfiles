#!/bin/bash

#xfce wallpaper#

##killall -HUP xfdesktop

xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP1/workspace0/last-image -s ~/Pictures/wall/8207822.png

#feh --bg-fill  '~/Pictures/wall/20.jpg'
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

##terminal-dark
cd ~/.config/xfce4/terminal/	
sed -i -e 's/ColorForeground=.*/ColorForeground=#A7080/g' 	terminalrc
sed -i -e 's/ColorBackground=.*/ColorBackground=#1e2327/g' 	terminalrc
sed -i -e 's/ColorCursor=.*/ColorCursor=#x/g' 			terminalrc
sed -i -e 's/ColorPalette=.*/ColorPalette=#1d2021;#cc241d;#98971a;#d79921;#458588;#b16286;#689d6a;#a89984;#928374;#fb4934;#b8bb26;#fabd2f;#83a598;#d3869b;#8ec07c;#ebdbb2/g' terminalrc



## alacritty
cd ~/.config/alacritty
sed -i -e 's/background:.*/background: "#0C0E14"/g'  colors.yml
sed -i -e 's/foreground:.*/foreground: "#F3F6E3"/g' 	colors.yml

##polybar of bspwm
cd ~/.config/bspwm/polybar
sed -i -e 's/BG =.*/BG =  #0C0E14/	g' 	config.ini
sed -i -e 's/FG =.*/FG = #C4C7C5/g' 	config.ini

##polybar
cd ~/.config/polybar 
sed -i -e 's/BG =.*/BG = #1e2327/g' 	config.ini
sed -i -e 's/FG =.*/FG = #A7080/g' 	config.ini
sed -i -e 's/BORDER =.*/BORDER = #283339/g' 	config.ini

#bash ~/.local/share/applications/rice/polybar.sh
pkill polybar && ./launch.sh &
