=##Naughty wallpaper##

#xfce wallpaper#

##killall -HUP xfdesktop

xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitoreDP1/workspace0/last-image -s ~/Pictures/wall/wallpaper2you_462909.jpg

##xfce icons
xfconf-query -c xsettings -p /Net/IconThemeName -s Mint-Y-Dark

##xfce style
xfconf-query -c xsettings -p /Net/ThemeName -s Mint-Y-Dark

##xfce cursor
xfconf-query -c xsettings -p /Gtk/CursorThemeName -s Qogir-manjaro


##xfce Fonts
xfconf-query -c xsettings -p /Gtk/FontName -s 'Source Code Pro for Powerline Semi-Bold Italic 12' 

##windows tweaks
xfconf-query -c xfwm4 -p /general/theme -s Mint-Y-Dark



## terminal theme
cd ~/.config/xfce4/terminal/
sed -i -e 's/ColorForeground=.*/ColorForeground=#x/g' 	terminalrc
sed -i -e 's/ColorBackground=.*/ColorBackground=#3c953c953c95/g' 	terminalrc
sed -i -e 's/ColorCursor=.*/ColorCursor=#867f81c281c2/g' 			terminalrc
sed -i -e 's/ColorPalette=.*/ColorPalette=#000000;#cc0000;#4e9a06;#c4a000;#3465a4;#75507b;#06989a;#d3d7cf;#555753;#ef2929;#8ae234;#fce94f;#739fcf;#ad7fa8;#34e2e2;#eeeeec/g' terminalrc
