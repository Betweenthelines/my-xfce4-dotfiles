
first=$(whoami)

sed -i -e 's/dreaming/'$first'/g' ~/.local/share/applications/dark.desktop
sed -i -e 's/dreaming/'$first'/g' ~/.local/share/applications/light.desktop
sed -i -e 's/dreaming/'$first'/g' ~/.local/share/applications/mint.desktop
sed -i -e 's/dreaming/'$first'/g' ~/.local/share/applications/gruvbox-dark.desktop
sed -i -e 's/dreaming/'$first'/g' ~/.local/share/applications/The-best.desktop

