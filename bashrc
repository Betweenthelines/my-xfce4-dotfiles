alias pacs="sudo pacman -S"
alias pacu="sudo pacman -Syy"
alias pacsu="sudo pacman -Syyu"
alias mirrors="sudo reflector --verbose --latest 15 --sort rate --save /etc/pacman.d/mirrorlist"
alias upgrade="sudo reflector --verbose --latest 15 --sort rate --save /etc/pacman.d/mirrorlist && sudo pacman -Syyu"
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias clean="sudo pacman -Scc"
alias remove="sudo pacman -R"
alias info="sudo pacman -Qi"
alias c='clear'
alias q='exit'
#alias sn='shutdown now'
alias ja='LANG=ja_JP.utf8'
alias v='vnstat'
alias yay='paru'
alias stats='DXVK_HUD=full'
alias w='wine'
alias 6='shutdown 6:00'
alias ydl='youtube-dl'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias youtube-mp3="youtube-dl --extract-audio --audio-format mp3"
alias w='wine'
alias vn='c && vnstat -l'
alias ftp1='~/.ftp.sh'
alias ftp2='~/.ftp2.sh'
alias cdark='~/.conkydark.sh'
alias clight='~/.conkylight.sh'
alias search='pacman -Ss'
alias right='~/.cright.sh'
alias left='~/.cleft.sh'
alias light='~/.light.sh'
alias dark='~/.dark.sh'
alias t='~/.themer.sh'

colorscript random

#sh $(ls ~/.config/rice | shuf -n 1)

#eval "$(starship init zsh)"
