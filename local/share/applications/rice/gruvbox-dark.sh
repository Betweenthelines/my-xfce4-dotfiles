#xfce wallpaper#
SCREEN=$(xrandr --listactivemonitors | awk 'END {print $1}' | tr -d :)
MONITOR=$(xrandr --listactivemonitors | awk -F ' ' 'END {print $2}' | tr -d \*+)
#WALLPAPER
xfconf-query --channel xfce4-desktop --property /backdrop/screen${SCREEN}/monitor${MONITOR}/workspace0/last-image --set ~/Pictures/wall/849941.png

##xfce icons
xfconf-query -c xsettings -p /Net/IconThemeName -s Gruvbox-Material-Dark

##xfce style
xfconf-query -c xsettings -p /Net/ThemeName -s Gruvbox-Material-Dark

##xfce cursor
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s Breeze_Snow 

##xfce Fonts
xfconf-query -c xsettings -p /Gtk/FontName -s 'Source Code Pro for Powerline Semi-Bold Italic 12' 

##windows tweaks
xfconf-query -c xfwm4 -p /general/theme -s Gruvbox-Material-Dark
xfconf-query -c xfwm4 -p /general/title_font -s "Sans Bold 10"

#terminal
xfconf-query -c xfce4-terminal -p /color-background -s 32302F
xfconf-query -c xfce4-terminal -p /color-foreground -s f8f8f2
xfconf-query -c xfce4-terminal -p /color-palette -s '#272822;#f92672;#a6e22e;#f4bf75;#66d9ef;#ae81ff;#a1efe4;#f8f8f2;#75715e;#f92672;#a6e22e;#f4bf75;#66d9ef;#ae81ff;#a1efe4;#f9f8f5'
xfconf-query -c xfce4-terminal -p /color-cursor -s f8f8f2

##polybar
cd ~/.config/polybar 
sed -i -e 's/BG =.*/BG =  #1d2021/g' 	config.ini
sed -i -e 's/FG =.*/FG = #ebdbb2/g' 	config.ini

pkill polybar && ./launch.sh &