##updating
sudo pacman -S archlinux-keyring
sudo pacman -Syy
sudo pacman -Syu




##chaotic AUR
sudo pacman-key --recv-key FBA220DFC880C036 --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key FBA220DFC880C036
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'

##appending pacman.conf##

echo "#" | sudo tee -a ~/Desktop/pacman.conf
echo "#" | sudo tee -a ~/Desktop/pacman.conf
echo "[chaotic-aur]" | sudo tee -a ~/Desktop/pacman.conf
echo "Include = /etc/pacman.d/chaotic-mirrorlist " | sudo tee -a ~/Desktop/pacman.conf



## fonts and gtk themes icons etc
sudo pacamn -S git curl wget qogir-gtk-theme-git qogir-icon-theme mint-themes mint-y-icons vimix-cursors vimix-gtk-themes vimix-icon-theme whitesur-gtk-theme arc-gtk-theme-git arc-solid-gtk-theme awesome-terminal-fonts fluent-cursor-theme-git cutefish-icons nordic-darker-theme 


##xfwm4 themes https://github.com/addy-dclxvi/Xfwm4-Theme-Collections 

git clone https://github.com/addy-dclxvi/Xfwm4-Theme-Collections ~/.themes


##terminal ricing Oh-my-zsh with starship prompt
sudo pacman -Rcns grml-zsh-config
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo pacman -S starship 

#cd ~/.oh-my-zsh/custom/plugins/
sed -i -e 's/plugins=.*/(git zsh-completions zsh-autosuggestions fast-syntax-highlighting)/g' ~/.zshrc














###making scripts executables
cd ~/.local/share/applications/ && chmod +x dark.desktop gruvbox-dark.desktop light.desktop mint.desktop 

cd && chmod +x .cright.sh .dark.sh .mint.sh .ftp2.sh .cleft.sh .ftp.sh .conkydark.sh .gruvbox-dark.sh .themer.sh .conkylight.sh .light.sh

cd ~/.local/share/applications/rice/ && chmod dark.sh  gruvbox-dark.sh  light.sh  mint.sh


##for xterm or urxvt
xrdb merge .Xresources




