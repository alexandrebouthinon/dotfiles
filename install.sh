#!/usr/bin/sh
# Alexandre BOUTHINON

#-----------------------------------------------------------------#


                    ###                     ###
                    # User space installation #
                    ###                     ###

# Installing Desktop Environment packages
yaourt -Syua compton tmux termite i3-gaps neovim polybar &&
yaourt -Syua weechat feh zsh rofi neofetch &&
yaourt -Syua htop docker git i3lock imagemagick numlockx &&
yaourt -Syua libcanberra numlockx python-pip python2-pip &&
yaourt -Syua xorg-xset xorg-xinput xorg-setxkbmap &&
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


# Root directory config files

ln -s $HOME/.dotfiles/.fehbg $HOME/.fehbg
ln -s $HOME/.dotfiles/.Xdefaults $HOME/.Xdefaults
ln -s $HOME/.dotfiles/.xinitrc $HOME/.xinitrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc
#-----------------------------------------------------------------#

# Fonts installation
cp -fr $HOME/.local/share/fonts/* $HOME/.local/share/fonts
#-----------------------------------------------------------------#
# Wallpaper nstallation
cp -fr $HOME/.local/share/wallpapers/* $HOME/.local/share/wallpapers
#-----------------------------------------------------------------#


# Installing favorites applications
yaourt -Syua firefox firefox-i18n-fr
#yaourt -Syua steam
yaourt -Syua moeditor
yaourt -Syua spotify
#yaourt -Syua staruml
#yaourt -Syua atom
#-----------------------------------------------------------------#
