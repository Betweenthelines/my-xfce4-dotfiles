#xfce wallpaper#

##killall -HUP xfdesktop

#include-file  /home/dreaming/.local/share/applications/rice/backgrounds.txt

xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP1/workspace0/last-image -s ~/Pictures/wall/gruvbox-horo.jpg
feh --bg-fill  ~/Pictures/wall/gruvbox-horo.jpg


##xfce icons
xfconf-query -c xsettings -p /Net/IconThemeName -s Mint-Y-Dark-Brown

##xfce style
xfconf-query -c xsettings -p /Net/ThemeName -s Gruvbox-Dark-BL

##xfce cursor
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s Qogir-manjaro


##xfce Fonts
xfconf-query -c xsettings -p /Gtk/FontName -s 'Source Code Pro for Powerline Semi-Bold Italic 12' 

##windows tweaks
xfconf-query -c xfwm4 -p /general/theme -s Gruvbox-Dark-BL
xfconf-query -c xfwm4 -p /general/title_font -s "Sans Bold 10"



## terminal theme
cd ~/.config/xfce4/terminal/
sed -i -e 's/ColorForeground=.*/ColorForeground=#ebdbb2/g' 	terminalrc
sed -i -e 's/ColorBackground=.*/ColorBackground=#1d2021/g' 	terminalrc
sed -i -e 's/ColorCursor=.*/ColorCursor=#x/g' 			terminalrc
sed -i -e 's/ColorPalette=.*/ColorPalette=#1d2021;#cc241d;#98971a;#d79921;#458588;#b16286;#689d6a;#a89984;#928374;#fb4934;#b8bb26;#fabd2f;#83a598;#d3869b;#8ec07c;#ebdbb2/g' terminalrc


## alacritty
cd ~/.config/alacritty
sed -i -e 's/background:.*/background: "#1d2021"/g'  colors.yml
sed -i -e 's/foreground:.*/foreground: "#ebdbb2"/g' 	colors.yml


##polybar of bspwm
cd ~/.config/bspwm/polybar
sed -i -e 's/BG =.*/BG =  #1d2021`/g' 	config.ini
sed -i -e 's/FG =.*/FG = #ebdbb2/g' 	config.ini

##polybar
cd ~/.config/polybar 
sed -i -e 's/BG =.*/BG =  #1d2021/g' 	config.ini
sed -i -e 's/FG =.*/FG = #ebdbb2/g' 	config.ini

pkill polybar && ./launch.sh

