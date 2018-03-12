#!/bin/sh

echo -e "\t [ Installing system packages ]"
echo -e "\n\t [ Updating packages cache and install upgrades ]\n"
yaourt -Syu --noconfirm curl openssh gnupg
echo -e "[✓] Cache Updated\n"

echo -e "\n\t [ Installing Xorg utility packages ]\n"
yaourt -S --noconfirm xorg-server bumblebee mesa nvidia xf86-video-intel lib32-virtualgl lib32-nvidia-utils xorg-xset xorg-xinput numlockx xorg-setxkbmap xorg-xbacklight xdg-user-dirs xclip xdg-utils acpi > /dev/null
sudo gpasswd -a alex bumblebee
echo -e "[✓] Xorg utility apps installed\n"

echo -e "\n\t [ Installing Network utility packages ]\n"
yaourt -S --noconfirm wireless_tools wpa_actiond wicd > /dev/null
echo -e "[✓] Network utility apps installed\n"
