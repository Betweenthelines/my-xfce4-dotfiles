#! /bin/bash
echo "whats the monitor of this computer ??   caution: XFCE only" 
read first

sed -i 's/monitore-DP1/'$first'/g' ~/.local/share/applications/rice/dark.sh
sed -i 's/monitore-DP1/'$first'/g' ~/.local/share/applications/rice/light.sh
sed -i 's/monitore-DP1/'$first'/g' ~/.local/share/applications/rice/gruvbox-dark.sh
sed -i 's/monitore-DP1/'$first'/g' ~/.local/share/applications/rice/Win95.sh
sed -i 's/monitore-DP1/'$first'/g' ~/.local/share/applications/rice/mint.sh
 
