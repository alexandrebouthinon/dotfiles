#!/bin/sh

# Load X Server Options
[[ -f $HOME/.Xdefaults ]] && xrdb -I$HOME -merge $HOME/.Xdefaults

# Map missing keybind
xinput set-button-map 10 1 2 3 4 5 2 7 8 9

# FR keyboard
setxkbmap fr &

# Wallpaper service
~/.fehbg &

# Frame effects and shadows service
compton --config ~/.config/compton/compton.conf &

# Notifications service
dunst &

# Enable Num Lock on start
numlockx on &

# External storage daemon
udiskie -2 -s &

# LightDM locker service
#light-locker &

# Start i3
exec i3
