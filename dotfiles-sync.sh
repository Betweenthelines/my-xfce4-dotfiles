
mkdir -pv ~/.local/share/applications/rice

cp terminalrc ~/.local/share/applications/rice/terminalrc
cp terminalrc ~/.terminalrc
##cp -r oh-my-zsh ~/.oh-my-zsh


##backing up your files
[ -d ~/.config ] && mkdir -pv ~/All-your-backup/config-backup-$(date +%Y.%m.%d-%H%M) && cp -Rf ~/.config ~/All-your-backup/config-backup-$(date +%Y.%m.%d-%H%M) && 
cp --backup .Xresources .zshrc All-your-backup &&
[ -d ~/.urxvt ] && mkdir -pv ~/All-your-backup/urxvt-backup-$(date +%Y.%m.%d-%H%M) && cp -Rf ~/.urxvt ~/All-your-backup/urxvt-backup-$(date +%Y.%m.%d-%H%M) && 
[ -d ~/Pictures/wall ] && mkdir -pv ~/All-your-backup/Pictures-backup-$(date +%Y.%m.%d-%H%M) && cp -Rf ~/Pictures/wall ~/All-your-backup/Pictures-backup-$(date +%Y.%m.%d-%H%M) && 



cp -rT Picture ~/Pictures
cp -rT config ~/.config
cp -rT urxvt  ~/.urxvt
cp -rT local ~/.local
cp themer.sh ~/.local/share/applications/rice/themer.sh
find $HOME/.local/share/applications/rice -type f -print0 | xargs -0 chmod 775
find $HOME/.local/share/applications -type f -print0 | xargs -0 chmod 775


cp conkydark.sh ~/.conkydark.sh
cp conkylight.sh ~/.conkydark.sh
cp cright.sh ~/.cright.sh
cp cleft.sh ~/.cleft.sh
cp ftp.sh ~/.ftp.sh
cp ftp2.sh ~/.ftp2.sh
cp themer.sh ~/.local/share/applications/rice/themer.sh
cp Xresources ~/.Xresources
cd && chmod +x .conkydark.sh .conkydark.sh .cright.sh .ftp.sh .ftp2.sh .Xresources 
cd ~/.local/share/applications/rice/ && chmod +x $(ls)
