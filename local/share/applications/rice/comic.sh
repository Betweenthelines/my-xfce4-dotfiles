#xfce wallpaper#

##killall -HUP xfdesktop

xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP1/workspace0/last-image -s ~/Pictures/wall/comic.png

##xfce icons
xfconf-query -c xsettings -p /Net/IconThemeName -s Vimix-Black

##xfce style
xfconf-query -c xsettings -p /Net/ThemeName -s WhiteSur-Light-solid-alt-pink

##xfce cursor
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s Qogir-manjaro


##xfce Fonts
xfconf-query -c xsettings -p /Gtk/FontName -s 'Source Code Pro for Powerline Semi-Bold Italic 12' 

##windows tweaks
xfconf-query -c xfwm4 -p /general/theme -s Rin
xfconf-query -c xfwm4 -p /general/title_font -s "Sans Bold 10"



##terminal-light

#tac .terminalrc | sed '1,2 d' | tac >> ~/Documents/experiment/terminalrc1.txt
#cd ~/Documents/experiment && mv terminalrc1.txt ~/.config/xfce4/terminal/terminalrc

cd ~/.config/xfce4/terminal/
sed -i -e 's/ColorForeground=.*/ColorForeground=#c7ccd1/g' 	terminalrc
sed -i -e 's/ColorBackground=.*/ColorBackground=#1c2023/g' 	terminalrc
sed -i -e 's/ColorCursor=.*/ColorCursor=#c7ccd1/g' 			terminalrc
sed -i -e 's/ColorPalette=.*/ColorPalette=#1c2023;#c7ae95;#95c7ae;#aec795;#ae95c7;#c795ae;#95aec7;#c7ccd1;#747c84;#c7ae95;#95c7ae;#aec795;#ae95c7;#c795ae;#95aec7;#f3f4f5/g' terminalrc


## alacritty
cd ~/.config/alacritty
sed -i -e 's/background:.*/background: "#FFFFFF"/g'  colors.yml
sed -i -e 's/foreground:.*/foreground: "#3C3C3C"/g' 	colors.yml

##polybar of bspwm
cd ~/.config/bspwm/polybar
sed -i -e 's/BG =.*/BG =  #FFFFFF/g' 	config.ini
sed -i -e 's/FG =.*/FG = #3C3C3C/g' 	config.ini

##polybar
cd ~/.config/polybar 
sed -i -e 's/BG =.*/BG =  #FFFFFF/g' 	config.ini
sed -i -e 's/FG =.*/FG = #3C3C3C/g' 	config.ini

pkill polybar && ./launch.sh &
