#!/bin/sh

# Installing Desktop Environment custom configuration

mkdir $HOME/.tmux
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
#-----------------------------------------------------------------#
## custom scripts
ln -s $HOME/.dotfiles/.config/scripts/* $HOME/.config/scripts/
#-----------------------------------------------------------------#
## termite
ln -s $HOME/.dotfiles/.config/termite/config $HOME/.config/termite/config
#-----------------------------------------------------------------#
## nvim
ln -s $HOME/.dotfiles/.config/nvim/* $HOME/.config/nvim
#-----------------------------------------------------------------#

# < .weechat >
ln -s $HOME/.dotfiles/.weechat/weechat.conf $HOME/.weechat/weechat.config
#-----------------------------------------------------------------#
# < .tmux >
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -s $HOME/.dotfiles/.tmux/* $HOME/.tmux/
ln -s $HOME/.dotfiles/.tmux/config $HOME/.tmux.conf
#-----------------------------------------------------------------#

# Root directory config files

ln -s $HOME/.dotfiles/.fehbg $HOME/.fehbg
ln -s $HOME/.dotfiles/.Xdefaults $HOME/.Xdefaults
ln -s $HOME/.dotfiles/.xinitrc $HOME/.xinitrc
ln -sf $HOME/.dotfiles/.zshrc $HOME/.zshrc
ln -s $HOME/.dotfiles/.Xmodmap $HOME/.Xmodmap
ln -s $HOME/.dotfiles/.gitconfig $HOME/.gitconfig
#-----------------------------------------------------------------#

# Fonts installation
cp -fr $HOME/.dotfiles/.local/share/fonts/* $HOME/.local/share/fonts
#-----------------------------------------------------------------#
# Wallpaper nstallation
cp -fr $HOME/.dotfiles/.local/share/wallpapers/* $HOME/.local/share/wallpapers
#-----------------------------------------------------------------#
mkdir $HOME/.go

rm $HOME/.bash*
