# lunar-leftwm
my config for leftwm

# dependencies
* leftwm
* polybar
* picom
* feh
* onagre
* alacritty
* fonts:
    * MesloLGS Nerd Font Mono
    * JetBrains Mono
    * FiraCode Nerd Font Mono
    * Material Design Icons
    * Font Awesome




# Install
you can either:
1. manually merge the config folder in this folder with the one in your home directory, move the lunar folder to the leftwm theme directory, and symlink it to the current theme directory
2. run the installer script

# Configuring

Since this was designed for my HiDPI laptop, you are encouraged to edit and tweak the theme to your need. If you have a custom picom config file, you can point to that in the theme's ```up``` script. This is also where you can change the desktop background by changing where the call to ```feh``` points to. The polybar config files are located in ```lunar/polybar/*``` if you need to add/remove modules, change sizes, change colors, or what have you. The alacritty config is located in ```~/.config/alacritty/alacritty.toml``` if you want to change font sizes, key bind, etc. The onagre config is located in ```~/.config/onagre/theme.scss```, where you can change the theming of you app launcher, including the sizes of the launcher and text. And, as always, you can change the spacing and border colors of windows in the ```theme.ron``` file. Optionally, you can have the install script move a provided default ```theme.ron``` to your  leftwm config directory, though it does include key bindings for programs that won't necessarily be installed on your system.

# GTK and QT

when using this theme, i pair it with a custom version of [Orchis-Dark](https://github.com/vinceliuice/Orchis-theme) with pink accents instead of blue for my GTK theme, and [catppuccin-mocha](https://github.com/catppuccin/qt5ct) with transparent backgrounds enabled





# Screenshots

![full screenshot](https://github.com/Silicasandwhich/lunar-leftwm/blob/solar/screenshots/solar.png?raw=true)
![onagre](https://github.com/Silicasandwhich/lunar-leftwm/blob/solar/screenshots/onagre.png?raw=true)

# Thanks To
* [b4skyx/leftwm-soothe](https://github.com/b4skyx/leftwm-soothe): boilerplate for theme directory
* [uzuto/cosmos-dots](https://github.com/uzuto/cosmos-dots): boilerplate for polybar, some aspects of color scheme, certain modules
* [polybar/polybar-scripts](https://github.com/polybar/polybar-scripts): scripts
* [Aenami](https://displate.com/displate/4392170): background image

*when stars smile at moon, when i look in your eyes* \
*just dialing your number, failing to press the last two*
