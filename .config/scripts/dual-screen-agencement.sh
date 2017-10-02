#!/bin/sh
if [[ $(</sys/class/drm/card0-HDMI-A-2/status) == 'connected' ]] ; then
	while true; do
	    echo "Le pc portable est à droite ou à gauche du second écran ? [D/G]"
		read dg
	    case $dg in
	        [Dd]* ) xrandr --output eDP-1 --auto --output HDMI-2 --auto --left-of eDP-1;pkill lemonbar;i3-msg restart; break;;
	        [Gg]* ) xrandr --output eDP-1 --auto --output HDMI-2 --auto --right-of eDP-1; pkill lemonbar;i3-msg restart;  break;;
	        * ) echo "Veuillez choisir entre droite et gauche...";;
	    esac
	done
fi
clear
