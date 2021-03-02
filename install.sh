#!/usr/bin/bash

# INSTALL GNOME TERMINAL PROPERTIES #
cat ./gnome/gnome-terminal.properties | dconf load /org/gnome/terminal/

# oh my zsh settings
cp -rf ./omz/themes/TheOne.zsh-theme ~/.oh-my-zsh/themes

# neovim settings
cp -rf ./config/nvim ~/.config
