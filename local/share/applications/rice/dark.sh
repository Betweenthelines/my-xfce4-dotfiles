#!/bin/bash



#xfce wallpaper#

##killall -HUP xfdesktop

xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP1/workspace0/last-image -s  ~/Pictures/wall/20.jpg

#feh --bg-fill  '~/Pictures/wall/20.jpg'
##xfce icons
xfconf-query -c xsettings -p /Net/IconThemeName -s Crule-dark

##xfce style
xfconf-query -c xsettings -p /Net/ThemeName -s Nordic-darker

##xfce cursor
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s Breeze_Snow 


##xfce Fonts
xfconf-query -c xsettings -p /Gtk/FontName -s 'Source Code Pro for Powerline Semi-Bold Italic 12' 

##windows tweaks
xfconf-query -c xfwm4 -p /general/theme -s 2bxfwm-Lucy 
xfconf-query -c xfwm4 -p /general/title_font -s "Sans Bold 1"

##terminal-dark
cd ~/.config/xfce4/terminal/	
sed -i -e 's/ColorForeground=.*/ColorForeground=#cccccc/g' 	terminalrc
sed -i -e 's/ColorBackground=.*/ColorBackground=#2F343F/g' 	terminalrc
sed -i -e 's/ColorCursor=.*/ColorCursor=#x/g' 			terminalrc
sed -i -e 's/ColorPalette=.*/ColorPalette=#1a1a1a;#d88568;#83a471;#b99353;#8eccdd;#b98eb2;#7c9cae;#cccccc;#767676;#d88568;#83a471;#b99353;#8eccdd;#b98eb2;#7c9cae;#f8f8f8/g' terminalrc



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
sed -i -e 's/BG =.*/BG =  #0C0E14/	g' 	config.ini
sed -i -e 's/FG =.*/FG = #C4C7C5/g' 	config.ini

#bash ~/.local/share/applications/rice/polybar.sh
pkill polybar && ./launch.sh &
