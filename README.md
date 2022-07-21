# my-xfce4-dotfiles
Arch only xfce4 dotfiles I have not implemented any backup system for another person.<br />
XFCE4 is also a prerequisite

Pre-riced Vanilla Arch flavour
![link to image](https://raw.githubusercontent.com/Betweenthelines/my-xfce4-dotfiles/main/pre-riced.png?raw=true)


Post-riced Vanilla Arch I HAVE PICOM ENABLED
![gruvbox](https://raw.githubusercontent.com/Betweenthelines/my-xfce4-dotfiles/main/gruvbox-dark.png)
![mint](https://raw.githubusercontent.com/Betweenthelines/my-xfce4-dotfiles/main/mint.png)
![light](https://raw.githubusercontent.com/Betweenthelines/my-xfce4-dotfiles/main/light.png)
![dark](https://raw.githubusercontent.com/Betweenthelines/my-xfce4-dotfiles/main/dark.png)



Run :<br />
`sudo pacman -S git wget`

`git clone https://github.com/Betweenthelines/my-xfce4-dotfiles.git`   

enter into the directory :<br />
`cd my-xfce4-dotfiles`
`chmod +x chaos install.sh`
`./chaos`
`./install.sh`
<br />

This mostly makes xfce4 default look like mine. I have not replaced compton with picom. I leave it to users. 

If you want to use picom instead 
1. disable compositor from windows-manager-tweaks
2. open session manager add entry picom just type <br />
`picom -b` 
<br />all the prerequisites config are included in the dotfiles


My custom Windows Keybindings should also be transferred 

<br />Super + Arrow kews (window tiling)
<br />Super + hjkl (window tiling)
<br />Super + tab rofi
<br />Super + 12345 (change workspaces)
<br />Alt + tab (iconify window)
<br />Super + Return (open terminal)
<br />Super + w (firefox)
<br />Super + f (thunar)
<br />Ctrl + q (quit the window)


