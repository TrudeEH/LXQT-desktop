#! /bin/bash

################
# LXQT config  #
#   by TrudeEH #
################

# DE config
rm -r ~/.config/gtk-3.0
rm -r ~/.config/lxqt
rm -r ~/.config/openbox
rm -r ~/.config/pcmanfm-qt
rm -r ~/.config/qterminal.org
rm -r ~/.config/compton.conf
rm ~/.xscreensaver

cp -r gtk-3.0 ~/.config/
cp -r lxqt ~/.config/
cp -r openbox ~/.config/
cp -r pcmanfm-qt ~/.config/
cp -r qterminal.org ~/.config/
cp -r compton.conf ~/.config/
cp xscreensaver ~/.xscreensaver

# Icons
sudo rm -r /usr/share/TrudeOS
sudo mkdir /usr/share/TrudeOS
sudo cp menu-icon.png /usr/share/TrudeOS
sudo cp wallpaper.jpg /usr/share/TrudeOS

# Tela Circle Icon Theme
git clone https://github.com/vinceliuice/Tela-circle-icon-theme.git
cd Tela-circle-icon-theme ; ./install.sh ; cd .. ; rm -rf Tela-circle-icon-theme

