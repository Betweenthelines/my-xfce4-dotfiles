sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
#sudo chsh $USER -s "/bin/zsh"
##zsh plugins installations
git clone --depth 1 https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting

git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone --depth 1 https://github.com/zsh-users/zsh-completions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions

##sourcing zsh
#. ~/.zshrc


#cd ~/.oh-my-zsh/custom/plugins/
sed -i -e 's/plugins=.*/plugins=(git zsh-completions zsh-autosuggestions fast-syntax-highlighting)/g' ~/.zshrc

chsh -s $(command -v zsh)
