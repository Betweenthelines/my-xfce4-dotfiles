echo '#############################################################'
echo '## THIS SCRIPT WILL INSTALL CHAOTIC AUR IN YOUR SYSTEM.######'
echo '####       SKIP IF ALREADY INSTALLED. choose no         #####'
echo '#############           SERIOUSLY               #############'
echo '#############################################################'
sleep 8
chmod +x chaotic.sh
while true; do 
read -p "Do you wish to install chaotic-aur? (Yy/Nn)" yn
    case $yn in
        [Yy]* ) ~/my-xfce4-dotfiles/chaotic.sh
                break;;
        [Nn]* ) echo "Ok cool";
                break;;
        * ) echo "Please answer yes or no.";;
    esac
done

sudo pacman -Syyu

mkdir -pv ~/.local/share/applications/rice
cp terminalrc ~/.local/share/applications/rice/terminalrc &&

[ -d ~/.config ] && mkdir -pv ~/All-your-backup/config-backup-$(date +%Y.%m.%d-%H%M) && cp -Rf ~/.config ~/All-your-backup/config-backup-$(date +%Y.%m.%d-%H%M) && 

cp -rT config ~/.config 
cp -rT local ~/.local
cp themer.sh ~/.local/share/applications/rice/themer.sh
find $HOME/.local/share/applications/rice -type f -print0 | xargs -0 chmod 775
find $HOME/.local/share/applications -type f -print0 | xargs -0 chmod 775



[ -d ~/Pictures/wall ] && mkdir -pv ~/All-your-backup/Pictures-backup-$(date +%Y.%m.%d-%H%M) && cp -Rf ~/Pictures/wall ~/All-your-backup/Pictures-backup-$(date +%Y.%m.%d-%H%M) && cp -rT Picture ~/Pictures


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

sed -i -e 's/monitoreDP1/'$monitor'/g' ~/.local/share/applications/rice/dark.sh
sed -i -e 's/monitoreDP1/'$monitor'/g' ~/.local/share/applications/rice/light.sh
sed -i -e 's/monitoreDP1/'$monitor'/g' ~/.local/share/applications/rice/mint.sh
sed -i -e 's/monitoreDP1/'$monitor'/g' ~/.local/share/applications/rice/gruvbox-dark.sh
sed -i -e 's/monitoreDP1/'$monitor'/g' ~/.local/share/applications/rice/Win95.sh
sed -i -e 's/monitoreDP1/'$monitor'/g' ~/.local/share/applications/rice/comic.sh
sed -i -e 's/monitoreDP1/'$monitor'/g' ~/.local/share/applications/rice/Juno.sh
sed -i -e 's/monitoreDP1/'$monitor'/g' ~/.local/share/applications/rice/Kripton.sh
sed -i -e 's/monitoreDP1/'$monitor'/g' ~/.local/share/applications/rice/Nordic-Bluish.sh
sed -i -e 's/monitoreDP1/'$monitor'/g' ~/.local/share/applications/rice/Nordic-polar.sh
sed -i -e 's/monitoreDP1/'$monitor'/g' ~/.local/share/applications/rice/Robust.sh
sed -i -e 's/monitoreDP1/'$monitor'/g' ~/.local/share/applications/rice/comic.sh


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
polybacklight=$(ls -1 /sys/class/backlight/)
echo $polybacklight
sed -i -e 's/intel_backlight/'$polybacklight'/g' ~/.config/polybar/config.ini



# Let's install each package listed in the pkglist.txt file.
sudo pacman --needed --ask 4 -Sy - < pkglist.txt || error "Failed to install required packages."


echo '##xfwm4 themes hCREDITS TO addy-dclxvi ##' 
git clone https://github.com/addy-dclxvi/Xfwm4-Theme-Collections ~/.themes


cd && 7z x ~/my-xfce4-dotfiles/themes.7z &&
cd && 7z x ~/my-xfce4-dotfiles/icons.7z &&
chmod +x ~/.config/polybar/launch.sh
cd ~/.config/polybar && ./launch.sh

echo "####################################################################"
echo "############ !!DONE!! ENJOY YOUR DAY CHAD BROS  ####################"
echo "####################################################################"
echo "##   run cd ~/.local/share/applications/rice/ && ./themer.sh     ###"
echo "####################################################################"
echo "####################################################################"
