#!/bin/sh

echo -e "\n\t [ Installing graphical Apps ]\n"

yaourt -Sa --noconfirm termite > /dev/null
echo -e "[✓] Termite installed\n"

yaourt -S --noconfirm firefox firefox-i18n-fr > /dev/null
echo -e "[✓] Firefox installed\n"

yaourt -Sa --noconfirm --force spotify > /dev/null
echo -e "[✓] Spotify installed\n"

yaourt -Sa --noconfirm --force slack-desktop > /dev/null
echo -e "[✓] Slack installed\n"

yaourt -Sa --noconfirm --force boostnote > /dev/null
echo -e "[✓] Boostnote installed\n"

yaourt -Sa --noconfirm --force gitkraken > /dev/null
echo -e "[✓] Gitkraken installed\n"
