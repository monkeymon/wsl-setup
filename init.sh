#! /bin/bash

ssh-keygen -t ed25519 -C "chris.sim+windows-wsl@antpolis.com" -f ~/.ssh/id_ed25519 -N ""

sudo apt -y update && sudo apt -y upgrade
sudo apt -y install zsh software-properties-common
sudo add-apt-repository ppa:ondrej/php
zsh




# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
