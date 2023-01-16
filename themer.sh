#!/bin/bash
PS3='Choose your theme style: '
style=("Light" "Dark" "mint" "mint-light" "gruvbox-dark" "Everforest" "The best" "Juno" "Kripton" "Nordic-bluish" "Nordic-polar" "Robust" "Comic" "true-dark" "exit")
select fav in "${style[@]}"; do
    case $fav in
        "Light")
            echo "Let there be Light  !!!!!!"
	   ~/.local/share/applications/rice/light.sh
            ;;
        "Dark")
            echo "Let there be Darkness !!!!!!"
	   ~/.local/share/applications/rice/dark.sh
            ;;
        "mint")
            echo "Nostalgia it is then !!!!!!!"
	    ~/.local/share/applications/rice/mint.sh
            ;;
	    "mint-light")
            echo "Nostalgia it is then !!!!!!!"
	    ~/.local/share/applications/rice/mint-light.sh
            ;;
	"gruvbox-dark")
            echo "In the woods !!!!!!!"
	   ~/.local/share/applications/rice/gruvbox-dark.sh
            ;;
	"Everforest")
            echo "In the woods !!!!!!!"
	   ~/.local/share/applications/rice/Everforest.sh
            ;;
        "The best")
            echo "The best rice ever !!!!!!!"
	   ~/.local/share/applications/rice/Win95.sh
            
            ;;
        "Juno")
            echo "true dark"
	    ~/.local/share/applications/rice/Juno.sh
            
            ;;
        "Kripton")
            echo " ..."
            ~/.local/share/applications/rice/Kripton.sh
            
            ;;
        "Nordic-bluish")
            echo "..."
	    ~/.local/share/applications/rice/Nordic-Bluish.sh
            ;;
            
        "Nordic-polar")
            echo "Nordic"
            ~/.local/share/applications/rice/Nordic-polar.sh
            
            ;;
        "Robust")
            echo "I personally use this the most"
            ~/.local/share/applications/rice/Robust.sh
            ;;
            
        "Comic")
            echo "I personally use this the most"
            ~/.local/share/applications/rice/comic.sh
            ;;
         "true-dark")
            echo "I personally use this the most"
            ~/.local/share/applications/rice/true-dark.sh
            ;;
            
            "exit")
	    echo "User requested exit"
	    exit
	    ;;
        *) echo "invalid option $REPLY";;
    esac
done
