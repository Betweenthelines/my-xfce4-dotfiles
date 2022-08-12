#!/bin/bash
cd ~/.config/gtk-3.0/
sed -i -e 's/gtk-theme-name =.*/gtk-theme-name = WhiteSur-Light-alt-pink/g' settings.ini
sed -i -e 's/gtk-icon-theme-name=.*/gtk-icon-theme-name= Qogir-ubuntu/g' settings.ini
sed -i -e 's/gtk-cursor-theme-name=.*/gtk-cursor-theme-name= Qogir-manjaro/g' settings.ini
sed -i -e 's/gtk-font-name=.*/gtk-font-name=Cantarell 11/g' settings.ini
bspc wm -r
feh --bg-fill  ~/Pictures/wall/light-2.jpg

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
pkill polybar && ./launch.sh
