#!/bin/bash

mkdir -p .tmp
cd .tmp
curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
curl -fsSL https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o awscli.zip
curl -LO https://github.com/getsops/sops/releases/download/v3.8.1/sops-v3.8.1.linux.amd64
sudo mv sops-v3.8.1.linux.amd64 /usr/local/bin/sops
sudo chmod +x /usr/local/bin/sops


sudo apt -y update
sudo apt -y install unzip php8.3 php8.3-{mysql,zip,bcmath,dev,zip,common,cli,fpm,gd,mysql,curl,xml,mbstring,bcmath}

unzip awscli.zip
sudo ./aws/install 

nvm install --lts
nvm use --lts

curl -fsSL https://getcomposer.org/installer -o composer-setup.php
php composer-setup.php
cd ..
rm -rf .tmp
