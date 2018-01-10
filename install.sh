#!/usr/bin/sh
# Alexandre BOUTHINON

#-----------------------------------------------------------------#


                    ###                     ###
                    # User space installation #
                    ###                     ###

# Installing Desktop Environment packages
yaourt -Syua compton ranger tmux termite i3-gaps neovim polybar playerctl cmatrix figlet&&
yaourt -Syua weechat feh wireless_tools alsa-utils alsa-libs zsh rofi neofetch &&
yaourt -Syua htop docker git i3lock imagemagick numlockx dunst openssh atool w3m &&
yaourt -Syua libcanberra numlockx python-pip python2-pip highlight xorg-xbacklight xdg-utils wpa_actiond &&
yaourt -Syua xorg-xset xorg-xinput xorg-setxkbmap zsh-syntax-highlight scrot tcl guile2.0 aspell ruby acpi &&
##-----------------------------------------------------------------#

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
# .weechat
mkdir $HOME/.weechat
#-----------------------------------------------------------------#

# Link creation

# < .config >
## compton
ln -s $HOME/.dotfiles/.config/compton/compton.conf $HOME/.config/compton/compton.conf
#-----------------------------------------------------------------#
## dunst
ln -s $HOME/.dotfiles/.config/dunst/dunstrc $HOME/.config/dunst/dunstrc
#-----------------------------------------------------------------#
## i3WM
ln -s $HOME/.dotfiles/.config/i3/config $HOME/.config/i3/config
#-----------------------------------------------------------------#
## nvim
ln -s $HOME/.dotfiles/.config/nvim/* $HOME/.config/nvim
#-----------------------------------------------------------------#
## polybar
ln -s $HOME/.dotfiles/.config/polybar/* $HOME/.config/polybar
ln -s $HOME/.dotfiles/.config/polybar/gmail/* $HOME/.config/polybar/gmail

### Needed for gmail plugin
sudo pip install --upgrade google-api-python-client
#-----------------------------------------------------------------#
## custom scripts
ln -s $HOME/.dotfiles/.config/scripts/* $HOME/.config/.config/scripts
#-----------------------------------------------------------------#
## termite
ln -s $HOME/.dotfiles/.config/termite/config $HOME/.config/termite/config
#-----------------------------------------------------------------#
## nvim
ln -s $HOME/.dotfiles/.config/nvim/* $HOME/.config/nvim
yaourt -Syua python2-neovim python-neovim
#-----------------------------------------------------------------#

# < .weechat >
ln -s $HOME/.dotfiles/.weechat/weechat.conf $HOME/.weechat/weechat.config
#-----------------------------------------------------------------#
# < .tmux >
mkdir $HOME/.tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -s $HOME/.dotfiles/.tmux/* $HOME/.tmux/
ln -s $HOME/.dotfiles/.tmux/config $HOME/.tmux.conf
#-----------------------------------------------------------------#

# Install oh my zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
# Root directory config files

ln -s $HOME/.dotfiles/.fehbg $HOME/.fehbg
ln -s $HOME/.dotfiles/.Xdefaults $HOME/.Xdefaults
ln -s $HOME/.dotfiles/.xinitrc $HOME/.xinitrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc
#-----------------------------------------------------------------#

# Fonts installation
cp -fr $HOME/.dotfiles/.local/share/fonts/* $HOME/.local/share/fonts
#-----------------------------------------------------------------#
# Wallpaper nstallation
cp -fr $HOME/.dotfiles/.local/share/wallpapers/* $HOME/.local/share/wallpapers
#-----------------------------------------------------------------#


# Installing favorites applications
yaourt -Syua firefox firefox-i18n-fr
yaourt -Syua moeditor
yaourt -Syua spotify
#yaourt -Syua staruml
#-----------------------------------------------------------------#
