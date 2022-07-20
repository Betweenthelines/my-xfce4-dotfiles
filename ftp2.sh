##!!bin/bash!!##
firstString="ftp://192.168.x:5555"
echo "What is the input 1?"
read first
echo "What is the input 2?"
read second

thunar $(echo "${firstString/x/"$first.$second"}") 
