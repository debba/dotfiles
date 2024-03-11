#!/usr/bin/bash

# INSTALL GNOME TERMINAL PROPERTIES #
cat ./gnome/gnome-terminal.properties | dconf load /org/gnome/terminal/

# INSTALL GNOME EXTENSIONS PROPERTIES #
cat ./gnome/gnome-shell-extensions.properties | dconf load /org/gnome/shell/extensions/

# oh my zsh settings
cp -rf ./omz/themes/TheOne.zsh-theme ~/.oh-my-zsh/themes

# neovim settings
cp -rf ./config/nvim ~/.config
