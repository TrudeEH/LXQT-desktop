# Desktop:
sudo apt install -y openbox obconf obmenu lightdm pcmanfm git dmenu feh compton lxappearance firefox-esr breeze-cursor-theme breeze-gtk-theme menu lxpanel nm-tray flameshot #[ou tint2] lxterminal

# Desktop Config:
mkdir ~/.config/ &> /dev/null
mkdir ~/.config/openbox/ &> /dev/null
mkdir ~/.config/compton &> /dev/null
mkdir ~/.config/tint2 &> /dev/null
mkdir ~/.config/TrudeOS &> /dev/null

rm -r ~/.config/openbox/* &> /dev/null
rm -r ~/.config/compton/* &> /dev/null
rm -r ~/.config/tint2/* &> /dev/null
rm -r ~/.config/TrudeOS/* &> /dev/null
rm -r ~/.config/lxpanel/ &> /dev/null

cp autostart ~/.config/openbox/
cp tint2rc ~/.config/tint2/
cp wallpaper.jpeg ~/.config/TrudeOS/
cp -r lxpanel ~/.config/

git clone https://github.com/vinceliuice/Tela-circle-icon-theme.git
cd Tela-circle-icon-theme ; ./install.sh ; cd .. ; rm -rf Tela-circle-icon-theme

#Themes:
# Os temas não são aplicados automaticamente (ainda)
# Como aplicar os temas:
# 1 - obconf -> instalar o tema de janelas
# 2 - lxappearance -> mudar os temas/instalar  o tema de ícones
