#! /bin/bash

# LXDE + Themes install
sudo apt install -y lxde flameshot breeze-cursor-theme breeze-gtk-theme firefox-esr

# OS config
mkdir ~/.TrudeOS
cp wallpaper.jpeg ~/.TrudeOS
cp menu-icon.png ~/.TrudeOS

# DE config
rm -r ~/.config/lxpanel
rm -r ~/.config/lxsession
rm -r ~/.config/lxterminal
rm -r ~/.config/openbox

cp -r lxpanel ~/.config/
cp -r lxsession ~/.config/
cp -r lxterminal ~/.config/
cp -r openbox ~/.config/

# Tela Circle Icon Theme
git clone https://github.com/vinceliuice/Tela-circle-icon-theme.git
cd Tela-circle-icon-theme ; ./install.sh ; cd .. ; rm -rf Tela-circle-icon-theme

