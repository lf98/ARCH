#!/bin/bash
#this is going to be a shell script to install everything and quickly reconfigure my operating system

#so far this script just quickly installs the packages I have stored in a txt file and configures some cosmetic things
#this script also changes the shell to zsh so be aware of that


#install all the packages from the package list file
#answer yes when prompted
yes | sudo pacman -S - < ../packages/package_list.txt

#install yay here, then use yay commands to install AUR packages instead of cloning everything again
git clone https://aur.archlinux.org/yay.git
cd ./yay
makepkg -si


#copy xinitrc into correct spot
cp ../display/xinitrc ~/.xinitrc

#copy the i3 config into correct directory
cp ../display/i3_config ~/.config/i3/config

#copy the polybar_config and launch.sh into correct locations
cp ../polybar_config ~/.config/polybar/config
cp ../launch.sh ~/.config/polybar/launch.sh

#run a chmod on launch.sh
chmod u+x ~/.config/polybar/launch.sh


#make zsh the default shell
chsh -s /bin/zsh

#copy zshrc into home directory
cp ../zsh/zshrc ~/.zshrc
source ~/.zshrc

#copy background into correct location
cp ../display/background.jpg ~/background.jpg

#the i3 config will run feh to set the background

#everything is hopefully done so reboot
reboot

