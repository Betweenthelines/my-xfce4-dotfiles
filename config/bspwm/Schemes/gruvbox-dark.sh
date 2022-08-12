#sed -i -e 's/a.*/b/g' settings.ini
cd ~/.config/gtk-3.0/
sed -i -e 's/gtk-theme-name =.*/gtk-theme-name = Gruvbox-Dark-BL/g' settings.ini
sed -i -e 's/gtk-icon-theme-name=.*/gtk-icon-theme-name= Crule-dark/g' settings.ini
sed -i -e 's/gtk-cursor-theme-name=.*/gtk-cursor-theme-name= Breeze_Snow/g' settings.ini
sed -i -e 's/gtk-font-name=.*/gtk-font-name=Cantarell 11/g' settings.ini
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
pkill polybar && ./launch.sh
bspc wm -r
feh --bg-fill  "~/Pictures/wall/gruvbox-horo.jpg" &