##updating
sudo pacman -S archlinux-keyring
sudo pacman -Syy
sudo pacman --noconfirm --needed -Syu



##chaotic AUR

PS3='Do you want to install Chaotic AUR??  (1 to continue) (2 to deny) (3 to exit) IF ALREADY INSTALLED SELECT 2'
style=("yes" "no" "exit")
select fav in "${style[@]}"; do
    case $fav in
        "yes")
            echo "Installing Chaotic AUR"
	    ~/my-xfce4-dotfiles/sh chaotic-AUR.sh  
            ;;
        "no")
            echo "Please delete chaotic-AUR.sh or edit the install.sh by yourself by pressing ctrl+c and running sed -i '8,28d' install.sh"
	    exit
            ;;
        "exit")
	    echo "User requested exit"
	    exit
	    ;;
        *) echo "invalid option $REPLY";;
    esac
done





sudo pacman -Syyu

## fonts and gtk themes icons etc
sudo pacman -Rcns grml-zsh-config
sudo pacman -S git curl wget qogir-gtk-theme-git qogir-icon-theme mint-themes mint-y-icons vimix-cursors vimix-gtk-themes vimix-icon-theme whitesur-gtk-theme arc-gtk-theme-git arc-solid-gtk-theme awesome-terminal-fonts fluent-cursor-theme-git cutefish-icons nordic-darker-theme 


##xfwm4 themes https://github.com/addy-dclxvi/Xfwm4-Theme-Collections 
git clone https://github.com/addy-dclxvi/Xfwm4-Theme-Collections ~/.themes


##terminal ricing Oh-my-zsh with starship prompt
chmod +x oh-my-zsh.sh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#sudo chsh $USER -s "/bin/zsh" i will explore it more if i feel oh-my-zsh is bloat

./oh-my-zsh.sh

## starship prompt zsh I just like it better 
sudo pacman -S starship picom


###syncing repo 
chmod +x dotfiles-sync.sh
./dotfiles-sync.sh

##shell-color-scripts
chmod +x shell-color-scripts.sh
./shell-color-scripts.sh


###making scripts executables

cd ~/.local/share/applications/ && chmod +x dark.desktop gruvbox-dark.desktop light.desktop mint.desktop 
cd && chmod +x .cright.sh .dark.sh .mint.sh .ftp2.sh .cleft.sh .ftp.sh .conkydark.sh .gruvbox-dark.sh .themer.sh .conkylight.sh .light.sh
cd ~/.local/share/applications/rice/ && chmod +x dark.sh  gruvbox-dark.sh  light.sh  mint.sh

##vim customization
chmod +x vim-customization.sh
./vim-customization.sh

##cleaning up
rm -r shell-color-scripts Xfwm4-Theme-Collections

##for xterm or urxvt
xrdb merge ~/.Xresources
