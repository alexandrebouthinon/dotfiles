#!/usr/bin/sh

echo -e "\n\t [ Installing User Desktop Environment packages ]\n"
# Installing Desktop Environment packages
yaourt -S --noconfirm i3-gaps > /dev/null
echo -e "[✓] I3 installed\n"

yaourt -Sa --noconfirm --force polybar python-pip playerctl python2-pip libcanberra alsa-utils alsa-libs > /dev/null
sudo pip install --upgrade google-api-python-client > /dev/null
echo -e "[✓] Polybar installed\n"

yaourt -S --noconfirm compton > /dev/null
echo -e "[✓] Compton installed\n"

yaourt -S --noconfirm dunst > /dev/null
echo -e "[✓] Dunst Notifications System installed\n"

yaourt -S --noconfirm feh > /dev/null
echo -e "[✓] Feh Background tool installed\n"

yaourt -S --noconfirm rofi > /dev/null
echo -e "[✓] Rofi Launcher installed\n"

yaourt -S --noconfirm scrot i3lock imagemagick w3m > /dev/null
echo -e "[✓] I3 Session Lock installed\n"

yaourt -S --noconfirm lxappearance > /dev/null
echo -e "[✓] GTK Theme Manager LXAppearance installed\n"

yaourt -S --noconfirm arc-gtk-theme > /dev/null
echo -e "[✓] Arc GTK Theme installed\n"
