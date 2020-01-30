#this is going to be a shell script to install everything and quickly reconfigure my operating system
#there is nothing here at the moment but I plan on creating this in the future.
#for now this useless shell script file is all thats in this directory




#install all the packages from the package list file
#answer yes when prompted
yes | sudo pacman -S - < ../packages/package_list.txt

#install yay here, then use yay commands to install AUR packages instead of cloning everything again




#copy xinitrc into correct spot


#copy the i3 config into correct directory

#copy the polybar_config and launch.sh into correct locations


#run a chmod on launch.sh



#make zsh the default shell
#copy zshrc into home directory


#copy background into correct location
#the i3 config will run feh to set the background
