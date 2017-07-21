#!/bin/sh
echo "#----------------------------""
echo "# Configuring Launcher Icons...""
echo "#----------------------------"
echo "Configuring Launcher Icons..."

service lightdm restart
gsettings set com.canonical.Unity.Launcher favorites "['application://org.gnome.Nautilus.desktop', 'application://chromium-browser.desktop', 'unity://running-apps', 'application://code.desktop', 'application://terminator.desktop', 'unity://expo-icon', 'unity://devices']"
echo "done"

echo "Creating symbolic links in nodejs"     
sudo ln -s /usr/bin/node /usr/local/bin/node
sudo ln -s /usr/bin/npm /usr/local/bin/npm
echo "done"

gsettings set com.canonical.Unity.Launcher favorites "['application://org.gnome.Nautilus.desktop', 'application://chromium-browser.desktop', 'unity://running-apps', 'application://code.desktop', 'application://terminator.desktop', 'unity://expo-icon', 'unity://devices']"

# Set ownership to vagrant
chown -R vagrant:vagrant * *.* .*