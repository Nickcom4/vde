#!/bin/bash

clear
echo "***************************"
echo "Running system_setup.sh ..."
apt-get update -y
apt-get upgrade -y
apt-get --yes install git
apt-get --yes install vim
apt-get --yes install terminator
apt-get --yes install chromium-browser
apt-get --yes install graphviz
apt-get --yes install ant
apt-get --yes install build-essential
apt-get --yes install cmake
apt-get --yes install curl
apt-get --yes install gedit
apt-get --yes install gimp
apt-get --yes install ruby
apt-get --yes install lxde
apt-get --yes install couchdb
gem install sass

#----------------------------
# Install MongoDB
#----------------------------
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
apt-get update
sudo apt-get install -y mongodb-org

#----------------------------
# Uninstall Unnecessary Apps
#----------------------------
sudo apt-get remove --purge libreoffice* --yes
sudo apt-get remove --purge thunderbird* --yes
sudo apt-get remove --purge firefox* --yes
sudo apt-get remove --purge rhythmbox* --yes
sudo apt-get clean
sudo apt-get autoremove --yes

#----------------------------
# Install Visual Studio Code
#----------------------------
wget  -qO /home/vagrant/Downloads/VisualStudioCode.deb https://go.microsoft.com/fwlink/?LinkID=760868
sudo dpkg -i /home/vagrant/Downloads/VisualStudioCode.deb
sudo apt-get install -f
sudo apt-get update -y
sudo apt-get install code

#----------------------------
# Install Node JS
#----------------------------
sudo curl -sL https://raw.githubusercontent.com/zerodevgroup/accelerate/master/tools/ubuntu-node-install | sudo -E bash -

#----------------------------
# Install Angular CLI
#----------------------------
npm install -g @angular/cli

# Set ownership to vagrant
chown -R vagrant:vagrant * *.* .*
