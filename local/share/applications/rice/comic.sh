#xfce wallpaper#
#xfce wallpaper#
SCREEN=$(xrandr --listactivemonitors | awk 'END {print $1}' | tr -d :)
MONITOR=$(xrandr --listactivemonitors | awk -F ' ' 'END {print $2}' | tr -d \*+)
#WALLPAPER
xfconf-query --channel xfce4-desktop --property /backdrop/screen${SCREEN}/monitor${MONITOR}/workspace0/last-image --set ~/Pictures/wall/comic.png

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

## terminal theme since 2023
xfconf-query -c xfce4-terminal -p /color-background -s '#1c2023'
xfconf-query -c xfce4-terminal -p /color-foreground -s '#c7ccd1'
xfconf-query -c xfce4-terminal -p /color-palette -s '#1c2023;#c7ae95;#95c7ae;#aec795;#ae95c7;#c795ae;#95aec7;#c7ccd1;#747c84;#c7ae95;#95c7ae;#aec795;#ae95c7;#c795ae;#95aec7;#f3f4f5'
xfconf-query -c xfce4-terminal -p /color-cursor -s '#c7ccd1'


##polybar
cd ~/.config/polybar 
sed -i -e 's/BG =.*/BG =  #FFFFFF/g' 	config.ini
sed -i -e 's/FG =.*/FG = #3C3C3C/g' 	config.ini

pkill polybar && ./launch.sh &
