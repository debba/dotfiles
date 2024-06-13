#!/bin/bash

# Script to remove all debug packages on ArchLinux using yay

# List and remove debug packages
yay -Rns $(pacman -Q | grep '\-debug' | awk '{print $1}')

# Check if the previous command was successful
if [ $? -eq 0 ]; then
    echo "All debug packages have been successfully removed."
else
    echo "An error occurred while removing the debug packages."
fi