#!/bin/sh

# Atom setup with apm

echo -e "\n\t [ Installing and configuring Atom Editor ]\n"
echo -e "Installing Atom ...\n"
yaourt -Sy atom > /dev/null
echo -e "Installing Plugins :\n"
apm install atom-ide-ui
apm install go-plus
apm install ide-go
apm install ide-json
apm install ide-yaml
apm install ide-typescript
apm install minimap
apm install minimap-cursorline
apm install minimap-git-diff
apm install minimap-selection
apm install teletype
apm install gitkraken
apm install gitkraken-glo

echo -e "[✓] Atom Editor installed\n"
