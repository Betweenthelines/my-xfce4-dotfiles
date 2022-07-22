##updating
echo "####################################################################"
echo "## Updating the system to avoid errors 'dialog' if not installed ###"
echo "####################################################################"

while true; do 
read -p "Do you wish to update your system? (Yy/Nn)" yn
    case $yn in
        [Yy]* ) sudo pacman --noconfirm --needed -Syu 
                break;;
        [Nn]* ) echo "Ok cool";
                break;;
        * ) echo "Please answer yes or no.";;
    esac
done


echo '##chaotic AUR####'
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

echo 'chaotic aur installed lets update pacman and download some theme, icons & cursors'
sudo pacman -Syyu
echo '## fonts and gtk themes icons etc'
sudo pacman -Rcns grml-zsh-config
sudo pacman -S git curl wget qogir-gtk-theme-git qogir-icon-theme mint-themes mint-y-icons vimix-cursors vimix-gtk-themes vimix-icon-theme whitesur-gtk-theme arc-gtk-theme-git arc-solid-gtk-theme awesome-terminal-fonts fluent-cursor-theme-git cutefish-icons nordic-darker-theme 


#echo '##xfwm4 themes https://github.com/addy-dclxvi/Xfwm4-Theme-Collections##' 
#git clone https://github.com/addy-dclxvi/Xfwm4-Theme-Collections ~/.themes


echo '###syncing repo###' 
chmod +x ~/my-xfce4-dotfiles/dotfiles-sync.sh

while true; do 
read -p "Do you wish to copy my dotfiles? (Yy/Nn)" yn
    case $yn in
        [Yy]* ) ~/my-xfce4-dotfiles/dotfiles-sync.sh
                break;;
        [Nn]* ) echo "Ok cool";
                break;;
        * ) echo "Please answer yes or no.";;
    esac
done


echo 'installing shell color-scripts'
chmod +x ~/my-xfce4-dotfiles/shell-color-scripts.sh
while true; do 
read -p "Do you wish to install few shell-color-scripts? (Yy/Nn)" yn
    case $yn in
        [Yy]* ) ~/my-xfce4-dotfiles/shell-color-scripts.sh
                break;;
        [Nn]* ) echo "Ok cool";
                break;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo '##cleaning up##'
rm -r shell-color-scripts Xfwm4-Theme-Collections

echo 'customizing vim'
chmod +x ~/my-xfce4-dotfiles/vim-customization.sh
while true; do 
read -p "Do you wish to customize vim? (Yy/Nn)" yn
    case $yn in
        [Yy]* ) ~/my-xfce4-dotfiles/vim-customization.sh
                break;;
        [Nn]* ) echo "Ok cool";
                break;;
        * ) echo "Please answer yes or no.";;
    esac
done


echo 'installing zsh'
chmod +x ~/my-xfce4-dotfiles/oh-my-zsh.sh
while true; do 
read -p "Do you wish to install zsh? (Yy/Nn)" yn
    case $yn in
        [Yy]* ) ~/my-xfce4-dotfiles/oh-my-zsh.sh
                break;;
        [Nn]* ) echo "Ok cool";
                break;;
        * ) echo "Please answer yes or no.";;
    esac
done


echo '## starship prompt zsh I just like it better###' 
sudo pacman -S starship picom



##for xterm or urxvt
xrdb merge ~/.Xresources
