#!/bin/bash


##Naughty wallpaper##

#xfce wallpaper#

##killall -HUP xfdesktop

xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP1/workspace0/last-image -s ~/Pictures/wall/light-2.jpg
feh --bg-fill  ~/Pictures/wall/light-2.jpg


##xfce icons
xfconf-query -c xsettings -p /Net/IconThemeName -s Qogir-ubuntu

##xfce style
xfconf-query -c xsettings -p /Net/ThemeName -s WhiteSur-Light-alt-pink

##xfce cursor
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s Qogir-manjaro


##xfce Fonts
xfconf-query -c xsettings -p /Gtk/FontName -s 'Source Code Pro for Powerline Semi-Bold Italic 12' 

##windows tweaks
xfconf-query -c xfwm4 -p /general/theme -s WhiteSur-Light
xfconf-query -c xfwm4 -p /general/title_font -s "Sans Bold 10"

##terminal-light

#tac .terminalrc | sed '1,2 d' | tac >> ~/Documents/experiment/terminalrc1.txt
#cd ~/Documents/experiment && mv terminalrc1.txt ~/.config/xfce4/terminal/terminalrc

#cd ~/.config/xfce4/terminal/
#sed -i -e 's/ColorForeground=.*/ColorForeground=#586e75/g' 	terminalrc
#sed -i -e 's/ColorBackground=.*/ColorBackground=#fdf6e3/g' 	terminalrc
#sed -i -e 's/ColorCursor=.*/ColorCursor=#x/g' 			terminalrc
#sed -i -e 's/ColorPalette=.*/ColorPalette=#fdf6e3;#dc322f;#859900;#b58900;#268bd2;#6c71c4;#2aa198;#586e75;#839496;#dc322f;#859900;#b58900;#268bd2;#6c71c4;#2aa198;#002b36/g' terminalrc

cd ~/.config/xfce4/terminal/	
sed -i -e 's/ColorForeground=.*/ColorForeground=#cccccc/g' 	terminalrc
sed -i -e 's/ColorBackground=.*/ColorBackground=#0C0E14/g' 	terminalrc
sed -i -e 's/ColorCursor=.*/ColorCursor=#x/g' 			terminalrc
sed -i -e 's/ColorPalette=.*/ColorPalette=#1a1a1a;#d88568;#83a471;#b99353;#8eccdd;#b98eb2;#7c9cae;#cccccc;#767676;#d88568;#83a471;#b99353;#8eccdd;#b98eb2;#7c9cae;#f8f8f8/g' terminalrc


## alacritty
cd ~/.config/alacritty
sed -i -e 's/background:.*/background: "#0C0E14"/g'  colors.yml
sed -i -e 's/foreground:.*/foreground: "#F3F6E3"/g' 	colors.yml

##polybar of bspwm
cd ~/.config/bspwm/polybar
sed -i -e 's/BG =.*/BG =  #0C0E14/g' 	config.ini
sed -i -e 's/FG =.*/FG = #C4C7C5/g' 	config.ini

##polybar
cd ~/.config/polybar 
sed -i -e 's/BG =.*/BG =  #0C0E14/g' 	config.ini
sed -i -e 's/FG =.*/FG = #C4C7C5/g' 	config.ini

pkill polybar && ./launch.sh
