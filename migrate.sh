#!/bin/bash

read -p "This script would turn your current Arch Based distro to Parch Linux and after running it there is no going back, Are you sure? (y/n): " choice

if [[ $choice == "y" ]]; then
    echo "Starting the migration...."
    cd /tmp
    wget https://raw.githubusercontent.com/parchlinux/ppr/main/x86_64/parch-branding-2024.07.17-0-any.pkg.tar.zst
    pacman -U parch-branding-2024.07.17-0-any.pkg.tar.zst --noconfirm
    wget https://raw.githubusercontent.com/parchlinux/ppr/main/x86_64/parch-pacman-27-0-any.pkg.tar.zst
    pacman -U parch-pacman-27-0-any.pkg.tar.zst --noconfirm
    pacman -Syy
    pacman -Rdd neofetch --noconfirm
    pacman -S parch-emoji-ios archlinux-keyring neofetch-git fastfetch parch-wallpapers --noconfirm
    echo "Done, please reboot your system."
else
    echo "Exiting..."
    exit 0
fi
