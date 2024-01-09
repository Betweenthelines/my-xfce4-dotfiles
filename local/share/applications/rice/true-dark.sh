#!/bin/bash



#xfce wallpaper#

##killall -HUP xfdesktop

xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP1/workspace0/last-image -s  ~/Pictures/wall/19.jpg

#feh --bg-fill  '~/Pictures/wall/20.jpg'
##xfce icons
xfconf-query -c xsettings -p /Net/IconThemeName -s wave

##xfce style
xfconf-query -c xsettings -p /Net/ThemeName -s krome-oes

##xfce cursor
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s Breeze_Snow


##xfce Fonts
xfconf-query -c xsettings -p /Gtk/FontName -s 'Source Code Pro for Powerline Semi-Bold Italic 12'

##windows tweaks
xfconf-query -c xfwm4 -p /general/theme -s border-only
xfconf-query -c xfwm4 -p /general/title_font -s "Source Code Pro for Powerline Semi-Bold Italic 1"



## terminal theme since 2023
xfconf-query -c xfce4-terminal -p /color-background -s 0a0b11
xfconf-query -c xfce4-terminal -p /color-foreground -s c7ccd1
xfconf-query -c xfce4-terminal -p /color-cursor -s c7ccd1
xfconf-query -c xfce4-terminal -p /color-palette -s '#1c2023;#c7ae95;#95c7ae;#aec795;#ae95c7;#c795ae;#95aec7;#c7ccd1;#747c84;#c7ae95;#95c7ae;#aec795;#ae95c7;#c795ae;#95aec7;#f3f4f5'


## alacritty
cd ~/.config/alacritty
sed -i -e 's/background:.*/background: "#0C0E14"/g'  colors.yml
sed -i -e 's/foreground:.*/foreground: "#F3F6E3"/g' 	colors.yml



##polybar
cd ~/.config/polybar
sed -i -e 's/BG =.*/BG = #0C0E14/g' 	config.ini
sed -i -e 's/FG =.*/FG = #C4C7C5/g' 	config.ini
sed -i -e 's/BORDER =.*/BORDER = #000000/g' 	config.ini

pkill polybar && ./launch.sh &
