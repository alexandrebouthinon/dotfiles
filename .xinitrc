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

sudo chmod go+w /sys/class/backlight/intel_backlight/brightness &

# Start i3
exec i3
