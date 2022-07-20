##!!bin/bash!!##
firstString="ftp://192.168.43.57:5555"
echo "What is the input?"
read second
thunar $(echo "${firstString/57/"$second"}")    
