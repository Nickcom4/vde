#!/bin/sh
echo "#----------------------------"
echo "# Configuring Launcher Icons..."
echo "#----------------------------"
echo "Configuring Launcher Icons..."

service lightdm restart
gsettings set com.canonical.Unity.Launcher favorites "['application://org.gnome.Nautilus.desktop', 'application://chromium-browser.desktop', 'unity://running-apps', 'application://code.desktop', 'application://terminator.desktop', 'unity://expo-icon', 'unity://devices']"
echo "done"

echo "Creating symbolic links in nodejs"     
sudo ln -s /usr/bin/node /usr/local/bin/node
sudo ln -s /usr/bin/npm /usr/local/bin/npm
echo "done"

# disable screen saver
gsettings set org.gnome.desktop.screensaver idle-activation-enabled false

# turn off lock screen
gsettings set org.gnome.desktop.screensaver lock-enabled false

# Install Additional Packages (Local to App in development???)
# /usr/bin/npm install -g gulp
# /usr/bin/npm install -g bower
# /usr/bin/npm install -g polymer-cli
# /usr/bin/npm install -g mern-cli

# Environment setup
# git clone https://github.com/nickcom4/Respository-Name.git

#cp vagrant-setup/exrc .exrc
#cat vagrant-setup/bashrc >> .bashrc
#mv vagrant-setup username

#----------------------------
# Install Angular CLI
#----------------------------
npm install -g @angular/cli

# Set ownership to vagrant
chown -R vagrant:vagrant * *.* .*

# remove autostart after running this script once
sudo rm -f /etc/xdg/autostart/desktop-config.sh.desktop