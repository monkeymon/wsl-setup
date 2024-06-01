#! /bin/bash

ssh-keygen -t ed25519 -C "chris.sim+windows-wsl@antpolis.com" -f ~/.ssh/id_ed25519 -N ""

sudo apt -y update && sudo apt -y upgrade
sudo apt -y install zsh software-properties-common
sudo add-apt-repository ppa:ondrej/php
chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

sed -i "s/plugins=(git)/plugins=(\n git\n dotenv\n zsh-syntax-highlighting\n zsh-autosuggestions\n ansible\n aws\n dotnet\n nvm\n npm\n tmux\n )/" $HOME/.zshrc

zsh

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
