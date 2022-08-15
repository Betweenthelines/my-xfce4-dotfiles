# To ricers who just want my theme changing scripts
do this <br />
`git clone https://github.com/Betweenthelines/my-xfce4-dotfiles.git`<br />
now open terminal in the directory my-xfce4-dotfiles and type <br />
`chmod +x onlythemechanger.sh`<br />
`./onlythemechanger.sh`<br />
 
 Also highly recommend to install my colorscipts <br />
 `chmod +x shell-color-scripts.sh` <br />
 `sudo ./shell-color-scripts.sh` <br />
 now run 
 `cd ~/.local/share/applications/rice && ./themer.sh`  <br />
  If you want to edit files open and review they are at ~/.local/share/applications/rice
  
# my-xfce4-dotfiles
Arch only xfce4 dotfiles I have implemented backup system for another person.<br />
But I urge you to go through my scripts so that you can prepare or any unforseen result<br />
XFCE4 is also a prerequisite



Run :<br />
`sudo pacman -S git wget`

`git clone https://github.com/Betweenthelines/my-xfce4-dotfiles.git`   

enter into the directory :<br />
`cd my-xfce4-dotfiles`<br />
`chmod +x install.sh`<br />
to install chaotic AUR ignore if already installed<br />
<br />
to install the dotfiles/ricing Arch xfce <br />
`./install.sh`
<br />
Also there is a zip file named themes.zip you should extract it in ~/.themes folder for Win 95 icons effect
<br />


Pre-riced Vanilla Arch flavour
![link to image](https://raw.githubusercontent.com/Betweenthelines/my-xfce4-dotfiles/main/pre-riced.png?raw=true)


Post-riced Vanilla Arch I HAVE PICOM ENABLED
![gruvbox](https://raw.githubusercontent.com/Betweenthelines/my-xfce4-dotfiles/main/gruvbox-dark.png)
![mint](https://raw.githubusercontent.com/Betweenthelines/my-xfce4-dotfiles/main/mint.png)
![light](https://raw.githubusercontent.com/Betweenthelines/my-xfce4-dotfiles/main/light.png)
![dark](https://raw.githubusercontent.com/Betweenthelines/my-xfce4-dotfiles/main/dark.png)
Picom-disabled for retro Win95 feel
![Win-95](https://raw.githubusercontent.com/Betweenthelines/my-xfce4-dotfiles/main/u8.png)


This mostly makes xfce4 default look like mine. I have not replaced compton with picom. I leave it to users. 

If you want to use picom instead 
1. disable compositor from windows-manager-tweaks
2. open session manager add entry picom just type <br />
`picom -b` 
<br />all the prerequisites config are included in the dotfiles

# Deprecated. Its all done automatically by whoami.sh script now. Left here for educational purposes
3. for the monitor setup just execute monitor.sh. You mostly dont need it 

<br /> 

`./wallpaper.sh`


For those who don't know at all how to change wallpaper of xfce4 from terminal do this <br />

run `xfconf-query -c xfce4-desktop -m`
<br />
now open desktop and change wallpaper manually. You will get this line in terminal now <br />
`set: /backdrop/screen0/monitoreDP1/workspace0/last-image`
<br />
this shows backdrop/SCREEN/MONITOR/WORKSPACE/last-image <br />

SCREEN MONITOR & WORKSPACE are important here <br />
Now run <br />
`cd my-xfce4-dotfiles`<br />
`chmod +x wallapaer.sh`<br />
`./wallpaper.sh` <br />

and type property screen monitor and workspace property which we have noted before. 
Also please note that the wallpaper script is one time use actually because of my lack of knowledge in coding.
Also monitor is NOT the one shown in xrandr but one shown with `xfconf-query -c xfce4-desktop -m` this is a limitation of xfce4 for the moment




# My custom Windows Keybindings should also be transferred 

<br />Super + Arrow kews (window tiling)
<br />Super + hjkl (window tiling)
<br />Super + tab rofi
<br />Super + 12345 (change workspaces)
<br />Alt + tab (iconify window)
<br />Super + Return (open terminal)
<br />Super + w (firefox)
<br />Super + f (thunar)
<br />Ctrl + q (quit the window)


