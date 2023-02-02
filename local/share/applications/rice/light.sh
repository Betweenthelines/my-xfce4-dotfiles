#!/bin/bash



#xfce wallpaper#

##killall -HUP xfdesktop

xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP1/workspace0/last-image -s ~/Pictures/wall/light.jpg
#feh --bg-fill  ~/Pictures/wall/light-2.jpg


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


cd ~/.config/xfce4/terminal/
sed -i -e 's/ColorForeground=.*/ColorForeground=#404040/g' 	terminalrc
sed -i -e 's/ColorBackground=.*/ColorBackground=#ffffff/g' 	terminalrc
sed -i -e 's/ColorCursor=.*/ColorCursor=x/g' 			terminalrc
sed -i -e 's/ColorPalette=.*/ColorPalette=#ffffff;#c41a15;#007400;#826b28;#0000ff;#a90d91;#318495;#404040;#808080;#c41a15;#007400;#826b28;#0000ff;#a90d91;#318495;#5e5e5e/g' terminalrc


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

pkill polybar && ./launch.sh &
