#!/bin/sh
sudo -u alex xrandr --output DP1-2 --off
sudo -u alex xrandr --output DP1-3 --off
sudo -u alex xrandr --output eDP1 --auto
sudo -u alex i3-msg restart

