#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

CURRENT_MONITOR=xrandr | grep " connected " | awk '{ print$1 }'

polybar -c $HOME/.config/polybar/config top &
polybar -c $HOME/.config/polybar/config bottom &


echo "Bars launched..."
