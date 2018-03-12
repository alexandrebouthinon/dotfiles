#!/bin/sh

echo -e "\n\t [ Installing basic CLI apps ]\n"

yaourt -S --noconfirm zsh > /dev/null
# Install oh my zsh
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh > /dev/null
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/bhilburn/powerlevel9k.git $HOME/.oh-my-zsh/custom/themes/powerlevel9k
source $HOME/.zshrc
echo -e "[✓] ZSH installed and configured\n"

yaourt -S --noconfirm ranger highlight > /dev/null
echo -e "[✓] Ranger File Explorer installed\n"

yaourt -S --noconfirm htop > /dev/null
echo -e "[✓] Htop System Monitoring Tool installed\n"

yaourt -S --noconfirm weechat tcl guile2.0 aspell ruby atool > /dev/null
echo -e "[✓] Weechat installed\n"

yaourt -S --noconfirm neovim xclip > /dev/null
yaourt -S --noconfirm python2-neovim python-neovim > /dev/null
echo -e "[✓] Neovim installed\n"
echo -e "[?] Neovim installed, don't forget to pass PlugInstall command\n"

yaourt -S --noconfirm tmux > /dev/null
echo -e "[✓] Tmux Terminal Multiplexer installed\n"


echo -e "\n\t [ Installing DevOps Tools ]\n"

yaourt -S --noconfirm docker > /dev/null
sudo gpasswd -a alex docker
echo -e "[✓] Docker installed\n"

yaourt -S --noconfirm terraform > /dev/null
echo -e "[✓] Terraform installed\n"

yaourt -S --noconfirm ansible > /dev/null
echo -e "[✓] Ansible installed\n"


echo -e "\n\t [ Installing Dev Libs and Language ]\n"

yaourt -S --noconfirm go > /dev/null
echo -e "[✓] Golang installed\n"

yaourt -S --noconfirm nodejs npm > /dev/null
echo -e "[✓] NodeJS installed\n"

yaourt -S --noconfirm ansible > /dev/null
echo -e "[✓] Ansible installed\n"
