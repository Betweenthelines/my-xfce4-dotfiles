cd ~/.config/gtk-3.0/
sed -i -e 's/gtk-theme-name =.*/gtk-theme-name = Mint-Y-Dark/g' settings.ini
sed -i -e 's/gtk-icon-theme-name=.*/gtk-icon-theme-name= Mint-Y-Dark/g' settings.ini
sed -i -e 's/gtk-cursor-theme-name=.*/gtk-cursor-theme-name= Qogir-manjaro/g' settings.ini
sed -i -e 's/gtk-font-name=.*/gtk-font-name=Cantarell 11/g' settings.ini
bspc wm -r
feh --bg-fill  ~/Pictures/wall/wallpaper2you_462909.jpg

## terminal theme
cd ~/.config/xfce4/terminal/
sed -i -e 's/ColorForeground=.*/ColorForeground=#x/g' 	terminalrc
sed -i -e 's/ColorBackground=.*/ColorBackground=#3c953c953c95/g' 	terminalrc
sed -i -e 's/ColorCursor=.*/ColorCursor=#867f81c281c2/g' 			terminalrc
sed -i -e 's/ColorPalette=.*/ColorPalette=#000000;#cc0000;#4e9a06;#c4a000;#3465a4;#75507b;#06989a;#d3d7cf;#555753;#ef2929;#8ae234;#fce94f;#739fcf;#ad7fa8;#34e2e2;#eeeeec/g' terminalrc

## alacritty
cd ~/.config/alacritty
sed -i -e 's/background:.*/background: "#3c3c3c"/g'  colors.yml
sed -i -e 's/foreground:.*/foreground: "#F3F6E3"/g' 	colors.yml

##polybar of bspwm
cd ~/.config/bspwm/polybar
sed -i -e 's/BG =.*/BG =  #3c3c3c/g' 	config.ini
sed -i -e 's/FG =.*/FG = #C4C7C5/g' 	config.ini
pkill polybar && ./launch.sh
