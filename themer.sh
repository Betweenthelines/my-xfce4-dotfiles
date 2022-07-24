#!/bin/bash
PS3='Choose your theme style: '
style=("Light" "Dark" "mint" "gruvbox-dark" "The-best" "exit")
select fav in "${style[@]}"; do
    case $fav in
        "Light")
            echo "Let there be Light  !!!!!!"
	    ~/.light.sh  
            ;;
        "Dark")
            echo "Let there be Darkness !!!!!!"
	    ~/.dark.sh
            ;;
        "mint")
            echo "Nostalgia it is then !!!!!!!"
	    ~/.mint.sh  
            ;;
	"gruvbox-dark")
            echo "In the woods !!!!!!!"
	    ~/.gruvbox-dark.sh  
            ;;
	"The best")
            echo "The best rice ever !!!!!!!"
	    ~/.Win95.sh
            ;;
         "exit")
	    echo "User requested exit"
	    exit
	    ;;
        *) echo "invalid option $REPLY";;
    esac
done
