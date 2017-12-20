#!/bin/sh

[[ -f $HOME/.Xdefaults ]] && xrdb -I$HOME -merge $HOME/.Xdefaults

xset m 3
xset fp+ $HOME/.local/share/fonts/misc
xset fp+ $HOME/.local/share/fonts/ohsnap
xset fp+ $HOME/.local/share/fonts/terminesspowerline
xset fp+ $HOME/.local/share/fonts/tewi
fc-cache -v

xinput set-button-map 10 1 2 3 4 5 2 7 8 9
setxkbmap fr &
~/.fehbg &
compton --config ~/.config/compton/compton.conf &
dunst &
numlockx on &
#sudo chmod go+w /sys/class/backlight/intel_backlight/brightness
exec i3
