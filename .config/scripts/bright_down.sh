#!/bin/sh
#
# Script to change brightness in Bodhi 12.04 for laptops which don't respond
# to hardware keys
# Needs to have write permissions to /sys/class/backlight/acpi_video0/brightness
# which can be set in /etc/rc.local
#
# August 2012

BRIGHT_INCREMENT=2
MIN_BRIGHT=1

read MAX_BRIGHT < /sys/class/backlight/intel_backlight/max_brightness
read CURRENT_BRIGHT < /sys/class/backlight/intel_backlight/brightness

CURRENT_BRIGHT=`expr $CURRENT_BRIGHT - $BRIGHT_INCREMENT`

if [ $CURRENT_BRIGHT -ge $MIN_BRIGHT ]
then
	echo $CURRENT_BRIGHT > /sys/class/backlight/intel_backlight/brightness
fi
