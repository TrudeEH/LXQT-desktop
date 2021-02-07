#! /bin/bash

sudo apt install lxde flameshot -y

mkdir ~/.TrudeOS
cp wallpaper.jpeg ~/.TrudeOS
cp menu-icon.png ~/.TrudeOS

rm -r ~/.config/lxpanel
rm -r ~/.config/lxsession
rm -r ~/.config/lxterminal
rm -r ~/.config/openbox

cp -r lxpanel ~/.config/
cp -r lxsession ~/.config/
cp -r lxterminal ~/.config/
cp -r openbox ~/.config/
