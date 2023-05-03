#!/bin/bash

echo "       _     ___   ________ ______         ______________________  _  ________";
echo " |     |     || \  ||_____||_____/___|     |______|______   |   |  |  ||  |  |";
echo " |_____|_____||  \_||     ||    \_   |_____|______|         |   |__|__||  |  |";
echo "                                                                              ";

read -p "Install Lunar-Leftwm? (Y/n): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] || $confirm != [Nn] ]] || exit 1


echo -n "copying files..."
mkdir -p ~/.config/polybar/config &2> /dev/null
cp -f .config/polybar/* ~/.config/polybar
cp -rf lunar ~/.config/leftwm/themes
echo "DONE"
echo -n "adding symlink..."
rm ~/.config/leftwm/themes/current
ln -s ~/.config/leftwm/themes/lunar ~/.config/leftwm/themes/current
echo "DONE"

echo "Done Installing!"
