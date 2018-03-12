#!/usr/bin/sh
# Alexandre BOUTHINON

#-----------------------------------------------------------------#


                    ###                     ###
                    # User space installation #
                    ###                     ###

# Installing Desktop Environment packages
sh $HOME/.dotfiles/install_scripts/system_packages.sh

sh $HOME/.dotfiles/install_scripts/de_packages.sh

# Installing CLI fav apps
sh $HOME/.dotfiles/install_scripts/user_cli_apps.sh

# Create config files tree and symlinks
sh $HOME/.dotfiles/install_scripts/create_symlink.sh

# Installing graphical fav apps
sh $HOME/.dotfiles/install_scripts/user_graphic_apps.sh

sh $HOME/.dotfiles/install_scripts/atom_setup.sh

sh $HOME/.dotfiles/install_scripts/user_goodies_apps.sh

sudo echo "alex ALL = (root) NOPASSWD: /usr/bin/chmod go+w /sys/class/backlight/intel_backlight/brightness" >> /etc/sudoers
echo -e "[✓] Brightness controls capability added for alex\n"

echo -e "Installation successful"
