#!/usr/bin/bash

# Extract Gnome Terminal properties

dconf dump /org/gnome/terminal/ > ./gnome/gnome-terminal.properties

# Extract list of extensions installed

gnome-extensions list --enabled > ./data/gnome-shell-enabled-extensions.txt

# Extract Gnome Shell extensions properties

dconf dump /org/gnome/shell/extensions/ > ./gnome/gnome-shell-extensions.properties

if [[ `git status --porcelain` ]]; then
    git add *
    git commit -m "Automatic changes in date $(date '+%d/%m/%Y %H:%M:%S')"
    git push
fi