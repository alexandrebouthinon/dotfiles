#!/bin/sh
# Automatically setup external monitor

xrandr_command="/usr/bin/xrandr"
sed_command="/bin/sed"

is_hdmi_connected=`DISPLAY=:0 $xrandr_command | $sed_command -n '/HDMI-2 connected/p'`

if [ -n "$is_hdmi_connected" ]; then
  DISPLAY=:0 $xrandr_command --output eDP-1 --off --output HDMI-2 --auto;i3-msg restart
else
  DISPLAY=:0 $xrandr_command --output HDMI-2 --off --output eDP-1 --auto;i3-msg restart
fi
