
mkdir -pv ~/.local/share/applications/rice

cp terminalrc ~/.local/share/applications/rice/terminalrc
cp terminalrc ~/.terminalrc
##cp -r oh-my-zsh ~/.oh-my-zsh

cp -r Pictures ~/Pictures
cp -rT config ~/.config
cp -r urxvt  ~/.urxvt
cp -rT local ~/.local

cp conkydark.sh ~/.conkydark.sh
cp conkylight.sh ~/.conkydark.sh
cp cright.sh ~/.cright.sh
cp cleft.sh ~/.cleft.sh
cp ftp.sh ~/.ftp.sh
cp ftp2.sh ~/.ftp2.sh
cp gruvbox-dark.sh ~/.gruvbox-dark.sh
cp dark.sh ~/.dark.sh
cp light.sh ~/.light.sh
cp mint.sh ~/.mint.sh
cp themer.sh ~/.themer.sh
cp Xresources ~/.Xresources
cd && chmod +x .conkydark.sh .conkydark.sh .cright.sh .ftp.sh .ftp2.sh .gruvbox-dark.sh .dark.sh .light.sh .mint.sh  .themer.sh .Xresources 
cd ~/.local/share/applications/rice/ && chmod +x $(ls)
