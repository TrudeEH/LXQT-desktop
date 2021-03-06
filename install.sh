#! /bin/bash

################
# LXQT config  #
#   by TrudeEH #
################

sudo aaaaaaaa &> /dev/null

# Update base:
echo
echo "[+] Updating the system base..."
echo -ne '[.........................]\r'
sudo apt update -y &> /dev/null
echo -ne '[#####....................]\r'
sudo apt upgrade -y &> /dev/null
echo -ne '[##########...............]\r'
sudo apt dist-upgrade -y &> /dev/null
echo -ne '[################.........]\r'
sudo apt autoremove -y &> /dev/null
echo -ne '[#####################....]\r'
sudo apt autoclean -y &> /dev/null
echo -ne '[#########################]\r'
echo -ne '\n'
echo
# --------------------------------------------------

# Display Manager config
echo "------------------------------------------------"
echo "Please select slim as the default window manager"
echo "------------------------------------------------"
sleep 5

sudo apt install zsh zsh-syntax-highlighting fonts-powerline slim -y

# DE config
rm -r ~/.config/gtk-3.0 &> /dev/null
rm -r ~/.config/lxqt &> /dev/null
rm -r ~/.config/openbox &> /dev/null
rm -r ~/.config/pcmanfm-qt &> /dev/null
rm -r ~/.config/qterminal.org &> /dev/null
rm -r ~/.config/compton.conf &> /dev/null
rm ~/.xscreensaver &> /dev/null
sudo rm -rf /usr/share/slim/themes/tslim &> /dev/null
sudo rm /etc/slim.conf &> /dev/null
mkdir ~/.config/autostart &> /dev/null
rm ~/.config/autostart/* &> /dev/null
mkdir ~/.fonts &> /dev/null
sudo mkdir /usr/local/share/fonts/ &> /dev/null

cp -r gtk-3.0 ~/.config/
cp -r lxqt ~/.config/
cp -r openbox ~/.config/
cp -r pcmanfm-qt ~/.config/
cp -r qterminal.org ~/.config/
cp -r compton.conf ~/.config/
cp xscreensaver ~/.xscreensaver
sudo cp -r tslim/ /usr/share/slim/themes
sudo cp slim.conf /etc/slim.conf
cp autostart/* ~/.config/autostart
cp fonts/* ~/.fonts
sudo cp fonts/* /usr/local/share/fonts/

# Icons
sudo rm -r /usr/share/TrudeOS
sudo mkdir /usr/share/TrudeOS
sudo cp menu-icon.png /usr/share/TrudeOS
sudo cp wallpaper.jpg /usr/share/TrudeOS

# Tela Circle Icon Theme
git clone https://github.com/vinceliuice/Tela-circle-icon-theme.git
cd Tela-circle-icon-theme ; ./install.sh ; cd .. ; rm -rf Tela-circle-icon-theme

# ZSH
rm ~/.zshrc &> /dev/null
cp zshrc ~/.zshrc 
rm ~/.p10k.zsh &> /dev/null
cp p10k.zsh ~/.p10k.zsh

sudo chsh -s $(which zsh)
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
git clone https://github.com/romkatv/powerlevel10k $ZSH_CUSTOM/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
