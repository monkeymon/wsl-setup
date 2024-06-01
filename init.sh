#! /bin/bash

sudo apt -y update && sudo apt -y upgrade
sudo apt -y install zsh software-properties-common



curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
curl -fsSL https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o awscli.zip

sudo add-apt-repository ppa:ondrej/php
sudo apt -y update
sudo apt -y install unzip php8.3 php8.3-{mysql,zip,bcmath,dev,zip,common,cli,fpm,gd,mysql,curl,xml,mbstring,bcmath}

unzip awscli.zip
sudo ./aws/install 


# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"