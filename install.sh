#!/usr/bin/bash

# INSTALL GNOME TERMINAL PROPERTIES #
cat ./gnome/gnome-terminal.properties | dconf load /org/gnome/terminal/

# INSTALL GNOME EXTENSIONS PROPERTIES #
cat ./gnome/gnome-shell-extensions.properties | dconf load /org/gnome/shell/extensions/

# oh my zsh settings
cp -rf ./omz/themes/TheOne.zsh-theme ~/.oh-my-zsh/themes

# neovim settings
cp -rf ./.config/nvim ~/.config

# copy arch makepkg config
cp -rf ./.makepkg.conf ~/.makepkg.conf

# git settings
cp -rf ./git/.gitconfig ~

# Antigravity settings
mkdir -p ~/.config/Antigravity/User
cp ./antigravity/User/settings.json ~/.config/Antigravity/User/settings.json

# Zed settings 
mkdir -p ~/.config/zed
cp ./zed/settings.json ~/.config/zed/settings.json
cp ./zed/tasks.json ~/.config/zed/tasks.json

# copy fonts

cp ./fonts/InterVariable.ttf ~/.local/share/fonts/InterVariable.ttf
cp ./fonts/InterVariable-Italic.ttf ~/.local/share/fonts/nterVariable-Italic.ttf
fc-cache -f -v
gsettings set org.gnome.desktop.interface font-name 'Inter Variable 11'
