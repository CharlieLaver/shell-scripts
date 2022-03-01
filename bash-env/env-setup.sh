#!/bin/bash

cd ~
sudo apt update
sudo apt upgrade
## setting up bash profile
sudo cat .profile > ~/.profile
sudo source ~/.profile
## installing LAMP server
sudo apt install apache2
sudo apt install mysql-server
mysql_secure_installation
sudo apt install php libapache2-mod-php php-mysql
## installing composer
sudo apt install composer
## installing curl
sudo apt install php-curl
## ubutnu GUI changes
gnome-extensions disable ubuntu-dock@ubuntu.com
gsettings set org.gnome.shell.extensions.desktop-icons show-trash false
gsettings set org.gnome.shell.extensions.desktop-icons show-home false
## installing git
sudo apt install git-all
## installing vim
sudo apt install vim
## installing chrome
sudo apt install wget
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
## installing VS code
sudo apt install snap
sudo snap install --classic Codeinclude

exit 0i
