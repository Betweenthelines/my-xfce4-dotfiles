
first=$(whoami)

sed -i -e 's/q/'$first'/g' ~/.local/share/applications/dark.desktop
sed -i -e 's/q/'$first'/g' ~/.local/share/applications/light.desktop
sed -i -e 's/q/'$first'/g' ~/.local/share/applications/mint.desktop
sed -i -e 's/q/'$first'/g' ~/.local/share/applications/gruvbox-dark.desktop

