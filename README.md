# To ricers who just want my theme changing scripts
do this <br />
`git clone https://github.com/Betweenthelines/my-xfce4-dotfiles.git`<br />
now open terminal in the directory my-xfce4-dotfiles and type <br />
`chmod +x onlythemechangerARCH.sh`<br />
`./onlythemechangerARCH.sh`<br />
 
 Also highly recommend to install my colorscipts. Credits to Derek Taylor <br />
 `chmod +x shell-color-scripts.sh` <br />
 `sudo ./shell-color-scripts.sh` <br />
 now run 
 `cd ~/.local/share/applications/rice && ./themer.sh`  <br />
  If you want to edit files open and review them. They are at ~/.local/share/applications/rice
  
# my-xfce4-dotfiles
Arch only xfce4 dotfiles I have implemented backup system for another person.<br />
But I urge you to go through my scripts so that you can prepare or any unforseen result<br />
XFCE4 is also a prerequisite
If you don't know or are reading this from phone type 
`sudo pacman -S xfce4 xfce4-goodies mousepad xfwm4 `
It will install xfce4 desktop install any login manager I use LightDM. `sudo pacman -S lightdm`

# As of 2023-24 
Many scripts regarding xfce4-terminal would have break for many users. Its fixed for now but and all colorschemes and script to instantly change colorschemes in xfce4-terminal should work now. If my script has any error in your setup please do inform so I can fix the script. 

Also let me put this in front I do not want to add anything more fancy like custom tint or polybar or any other WM other than xfce. This entire idea was just to make and keep xfce4 beautiful and as modern as any other WM which will inevitebly come in future. XFCE is known for stability so I wanted to provide a stable script for people for my looong time favorite WM XFCE.


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




Pre-riced Vanilla Arch flavour
![link to image](https://raw.githubusercontent.com/Betweenthelines/my-xfce4-dotfiles/main/pre-riced.png?raw=true)


Post-riced Vanilla Arch I HAVE PICOM ENABLED
![link to image](https://raw.githubusercontent.com/Betweenthelines/my-xfce4-dotfiles/main/All-the-colorschemes.jpg)
![link to image](https://raw.githubusercontent.com/Betweenthelines/my-xfce4-dotfiles/main/stacked%20images.jpg)

This mostly makes xfce4 default look like mine. I have not replaced compton with picom. I leave it to users. 

If you want to use picom instead 
1. disable compositor from windows-manager-tweaks
2. open session manager add entry picom just type <br />
`picom -b` 
<br />all the prerequisites config are included in the dotfiles

# Again Deprecated. 2024. Script works but with different commands than previously left for education purposes.

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
`./wallpaper.sh` <br /> (I deleted this :P Sorry) <br /> <br />
 <br />
 

and type property screen monitor and workspace property which we have noted before. 
Also please note that the wallpaper script is one time use actually because of my lack of knowledge in coding.
Also monitor is NOT the one shown in xrandr but one shown with `xfconf-query -c xfce4-desktop -m` this is a limitation of xfce4 for the moment

# My custom Windows Keybindings should also be transferred 
_______________________________________________________________
<br />  Super + Arrow kews          (window tiling)          
<br />  Super + hjkl                (window tiling)           
<br />  Super + tab                 (rofi)                   
<br />  Super + 12345               (change workspaces)       
<br />  Alt + tab                   (iconify window)         
<br />  Super + Return              (open terminal)          
<br />  Super + w                   (firefox)                
<br />  Super + f                   (thunar)                 
<br />  Super + c                   (quit the window)        
<br />  Ctrl + Alt + h              (htop)                   
<br />  Ctrl + Alt + r              (ranger) 
<br />  Ctrl + Shift + (1234567)    (Different themes)
<br />  
_______________________________________________________________
<br />  <br />  <br />  <br />  <br />  

