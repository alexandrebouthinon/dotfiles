#!/usr/bin/sh
# Alexandre BOUTHINON

#-----------------------------------------------------------------#


                    ###                     ###
                    # User space installation #
                    ###                     ###

# Installing Desktop Environment packages
yaourt -Syua compton termite i3-gaps neovim polybar ncmpcpp
yaourt -Syua weechat mpd feh zsh rofi neofetch
yaourt -Syua htop docker git i3lock imagemagick numlockx
yaourt -Syua libcanberra numlockx python-pip python2-pip
yaourt -Syua xorg-xset xorg-xintput xorg-setxkbmap
#-----------------------------------------------------------------#

# Installing Desktop Environment custom configuration

# .config
mkdir $HOME/.config
mkdir $HOME/.config/{compton,dunst,i3,nvim,polybar,scripts,termite}
mkdir $HOME/.config/polybar/gmail
#-----------------------------------------------------------------#
# .local
mkdir $HOME/.local
mkdir $HOME/.local/share
mkdir $HOME/.local/share/{fonts,wallpapers}
#-----------------------------------------------------------------#
# .mpd
mkdir $HOME/.mpd
#-----------------------------------------------------------------#
# .ncmpcpp
mkdir $HOME/.ncmpcpp
#-----------------------------------------------------------------#
# .weechat
mkdir $HOME/.weechat
#-----------------------------------------------------------------#

# Link creation

# < .config >
## compton
ln ./.config/compton/compton.conf $HOME/.config/compton/compton.conf
#-----------------------------------------------------------------#
## dunst
ln ./.config/dunst/dunstrc $HOME/.config/dunst/dunstrc
#-----------------------------------------------------------------#
## i3WM
ln ./.config/i3/config $HOME/.config/i3/config
#-----------------------------------------------------------------#
## nvim
ln ./.config/nvim/* $HOME/.config/nvim/
#-----------------------------------------------------------------#
## polybar
ln ./.config/polybar/* $HOME/.config/polybar/
ln ./.config/polybar/gmail/* $HOME/.config/polybar/gmail/

### Needed for gmail plugin
sudo pip install --upgrade google-api-python-client
#-----------------------------------------------------------------#
## custom scripts
ln ./.config/scripts/* $HOME/.config/.config/scripts/
#-----------------------------------------------------------------#
## termite
ln ./.config/termite/config $HOME/.config/termite/config
#-----------------------------------------------------------------#
## nvim
ln ./.config/nvim/* $HOME/.config/nvim/
#-----------------------------------------------------------------#

# < .mpd >
ln ./.mpd/* $HOME/.mpd
#-----------------------------------------------------------------#

# < .ncmpcpp >
ln ./.ncmpcpp/config $HOME/.ncmpcpp/fontconfig
#-----------------------------------------------------------------#

# < .weechat >
ln ./.weechat/weechat.conf $HOME/.weechat/weechat.config
#-----------------------------------------------------------------#


# Root directory config files

ln ./.fehbg $HOME/.fehbg
ln ./.Xdefaults $HOME/.Xdefaults
ln ./.xinitrc $HOME/.xinitrc
ln ./.zshrc $HOME/.zshrc
#-----------------------------------------------------------------#

# Fonts installation
cp -fr ./.local/share/fonts/* $HOME/.local/share/fonts
#-----------------------------------------------------------------#


# Installing favorites applications
yaourt -Syua firefox firefox-i18n-fr
yaourt -Syua steam
yaourt -Syua moeditor
yaourt -Syua spotify
yaourt -Syua staruml
yaourt -Syua atom
yaourt -Syua vlc
yaourt -Syua neovim
#-----------------------------------------------------------------#
