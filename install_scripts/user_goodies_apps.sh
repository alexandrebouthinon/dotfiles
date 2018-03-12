#!/bin/sh

echo -e "\n\t [ Installing Goodies Apps ]\n"
yaourt -Sa --noconfirm --force neofetch > /dev/null
echo -e "[✓] Neofetch installed\n"

yaourt -S --noconfirm cmatrix > /dev/null
echo -e "[✓] CMatrix installed\n"

yaourt -S --noconfirm figlet > /dev/null
echo -e "[✓] Figlet Text to ASCII Art tool installed\n"
