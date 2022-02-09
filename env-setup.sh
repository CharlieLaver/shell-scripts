#!/bin/bash

echo -e "\n\nInstalling Git\n"
sudo apt install git-all

echo -e "\n\nInstalling Vim\n"
sudo apt install vim

echo -e "\n\nInstalling Chrome\n"
sudo apt install wget
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

echo -e "\n\nUpdating Apt Packages and upgrading latest patches\n"
sudo apt-get update -y && sudo apt-get upgrade -y

echo -e "\n\nInstalling Apache2 Web server\n"
sudo apt-get install apache2 apache2-doc apache2-mpm-prefork apache2-utils libexpat1 ssl-cert -y

echo -e "\n\nInstalling PHP & Requirements\n"
sudo apt-get install libapache2-mod-php7.0 php7.0 php7.0-common php7.0-curl php7.0-dev php7.0-gd php-pear php7.0-mcrypt php7.0-mysql -y

echo -e "\n\nInstalling MySQL\n"
sudo apt-get install mysql-server mysql-client -y

echo -e "\n\nPermissions for /var/www\n"
sudo chown -R www-data:www-data /var/www
echo -e "\n\n Permissions have been set\n"

echo -e "\n\nEnabling Modules\n"
sudo a2enmod rewrite
sudo phpenmod mcrypt

echo -e "\n\nRestarting Apache\n"
sudo service apache2 restart

echo -e "\n\nDisabling dock from GUI\n"
gnome-extensions disable ubuntu-dock@ubuntu.com

exit 0i
