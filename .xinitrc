#!/bin/sh
#==============================================================================
#             ██╗  ██╗██╗███╗   ██╗██╗████████╗██████╗  ██████╗
#             ╚██╗██╔╝██║████╗  ██║██║╚══██╔══╝██╔══██╗██╔════╝
#              ╚███╔╝ ██║██╔██╗ ██║██║   ██║   ██████╔╝██║     
#              ██╔██╗ ██║██║╚██╗██║██║   ██║   ██╔══██╗██║     
#             ██╔╝ ██╗██║██║ ╚████║██║   ██║   ██║  ██║╚██████╗
#             ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝
# 
# Description: X server startup script
# Author: Alexandre Bouthinon
#==============================================================================

#==============================================================================
# Common X server settings
#==============================================================================
setxkbmap fr &                      # French keyboard layout
xset r rate 200 40                  # Keyboard stroke delay and rate
numlockx on &                       # Enable numeric pad

#==============================================================================
# Display layout choice
#==============================================================================
options=($(ls -f --ignore='.' --ignore='..' $HOME/.config/screenlayouts/))

if [ ${#options[@]} -gt 1 ]; then
  if [ ${options[@]} = *"default"* ]; then
    opt="default"
  else
    PS3='Please choose the screen layout to use: '
    select opt in "${options[@]}"
    do
      case $opt in
        $options)
          break
          ;;
        *) echo "invalid option $opt";;
      esac
    done
  fi
else
  if [ ${#options[@]} -eq 1 ]; then
    opt=${options[0]}
  fi
fi

if [ ! ${#options[@]} -eq 0 ]; then
  echo "Using $opt as display layout..."
  $HOME/.config/screenlayouts/$opt
fi

#==============================================================================
# Start X session
#==============================================================================
exec bspwm
