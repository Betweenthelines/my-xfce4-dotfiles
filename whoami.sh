## for executables in menu
first=$(whoami)

sed -i -e 's/dreaming/'$first'/g' ~/.local/share/applications/dark.desktop
sed -i -e 's/dreaming/'$first'/g' ~/.local/share/applications/light.desktop
sed -i -e 's/dreaming/'$first'/g' ~/.local/share/applications/mint.desktop
sed -i -e 's/dreaming/'$first'/g' ~/.local/share/applications/gruvbox-dark.desktop
sed -i -e 's/dreaming/'$first'/g' ~/.local/share/applications/The-best.desktop
sed -i -e 's/dreaming/'$first'/g' ~/.local/share/applications/comic.desktop
sed -i -e 's/dreaming/'$first'/g' ~/.local/share/applications/Juno.desktop
sed -i -e 's/dreaming/'$first'/g' ~/.local/share/applications/Kripton.desktop
sed -i -e 's/dreaming/'$first'/g' ~/.local/share/applications/Nordic-bluish.desktop
sed -i -e 's/dreaming/'$first'/g' ~/.local/share/applications/Nordic-polar.desktop
sed -i -e 's/dreaming/'$first'/g' ~/.local/share/applications/Robust.desktop
sed -i -e 's/dreaming/'$first'/g' ~/.local/share/applications/comic.desktop

## for wallpapers to work in xfce4 environment
monitor=$(awk '/monitor/ {print $2}' ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml |  sed 's/name//g' |  sed 's/=//g' | sed 's/"//g' | sed 's/monitor0//g')
echo $monitor

sed -i -e 's/monitoreDP1/'$monitor'/g' ~/.local/share/applications/dark.desktop
sed -i -e 's/monitoreDP1/'$monitor'/g' ~/.local/share/applications/light.desktop
sed -i -e 's/monitoreDP1/'$monitor'/g' ~/.local/share/applications/mint.desktop
sed -i -e 's/monitoreDP1/'$monitor'/g' ~/.local/share/applications/gruvbox-dark.desktop
sed -i -e 's/monitoreDP1/'$monitor'/g' ~/.local/share/applications/The-best.desktop
sed -i -e 's/monitoreDP1/'$monitor'/g' ~/.local/share/applications/comic.desktop
sed -i -e 's/monitoreDP1/'$monitor'/g' ~/.local/share/applications/Juno.desktop
sed -i -e 's/monitoreDP1/'$monitor'/g' ~/.local/share/applications/Kripton.desktop
sed -i -e 's/monitoreDP1/'$monitor'/g' ~/.local/share/applications/Nordic-bluish.desktop
sed -i -e 's/monitoreDP1/'$monitor'/g' ~/.local/share/applications/Nordic-polar.desktop
sed -i -e 's/monitoreDP1/'$monitor'/g' ~/.local/share/applications/Robust.desktop
sed -i -e 's/monitoreDP1/'$monitor'/g' ~/.local/share/applications/comic.desktop


screen=$(awk '/screen/ {print $2}' ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml | sed 's/name=//g' | sed 's/"//g')
echo $screen

sed -i -e 's/screen0/'$screen'/g' ~/.local/share/applications/dark.desktop
sed -i -e 's/screen0/'$screen'/g' ~/.local/share/applications/light.desktop
sed -i -e 's/screen0/'$screen'/g' ~/.local/share/applications/mint.desktop
sed -i -e 's/screen0/'$screen'/g' ~/.local/share/applications/gruvbox-dark.desktop
sed -i -e 's/screen0/'$screen'/g' ~/.local/share/applications/The-best.desktop
sed -i -e 's/screen0/'$screen'/g' ~/.local/share/applications/comic.desktop
sed -i -e 's/screen0/'$screen'/g' ~/.local/share/applications/Juno.desktop
sed -i -e 's/screen0/'$screen'/g' ~/.local/share/applications/Kripton.desktop
sed -i -e 's/screen0/'$screen'/g' ~/.local/share/applications/Nordic-bluish.desktop
sed -i -e 's/screen0/'$screen'/g' ~/.local/share/applications/Nordic-polar.desktop
sed -i -e 's/screen0/'$screen'/g' ~/.local/share/applications/Robust.desktop
sed -i -e 's/screen0/'$screen'/g' ~/.local/share/applications/comic.desktop

## for polybar to work properly
polymonitor=$(awk '/monitor/ {print $2}' ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml |  sed 's/name//g' |  sed 's/=//g' | sed 's/"//g' | sed 's/monitor0//g' | sed 's/monitor//g')
echo $polymonitor
sed -i -e 's/eDP1/'$polymonitor'/g' ~/.config/polybar/config.ini
















