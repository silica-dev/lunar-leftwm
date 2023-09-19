#!/bin/bash

echo "       _     ___   ________ ______         ______________________  _  ________";
echo " |     |     || \  ||_____||_____/___|     |______|______   |   |  |  ||  |  |";
echo " |_____|_____||  \_||     ||    \_   |_____|______|         |   |__|__||  |  |";
echo "                                                                              ";

read -p "Install Lunar-Leftwm? (Y/n): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] || $confirm != [Nn] ]] || exit 1


echo -n "copying files..."
mkdir -p ~/.config/polybar/config &2> /dev/null
cp -f .config/polybar/* ~/.config/polybar
mkdir ~/.config/leftwm/themes
cp -rf lunar ~/.config/leftwm/themes/
echo "DONE"
echo -n "adding symlink..."
rm ~/.config/leftwm/themes/current
ln -s ~/.config/leftwm/themes/lunar ~/.config/leftwm/themes/current
echo "DONE"
echo -n "copying onagre config..."
mkdir ~/.config
cp -rf onagre ~/.config/
echo "DONE"
echo -n "copying alacritty config..."
mkdir ~/.config/alacritty
cp -f ./alacritty.yml ~/.config/alacritty/
echo "DONE"

echo "Done Installing!"
read -p "Copy new config file? (Y/n): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] || $confirm != [Nn] ]] || exit 1
echo -n "copying leftwm config..."
mv ~/.config/leftwm/config.ron ~/.config/leftwm/config-old.ron
cp ./config.ron ~/.config/leftwm/config.ron
echo "DONE"
echo "Your old config file has been moved to ~/.config/leftwm/config-old.ron. Take a look at the new config and make any changes you want."
