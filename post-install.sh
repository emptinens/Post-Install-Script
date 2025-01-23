#!/bin/bash

# Define the packages to install for each system
arch_packages=("firefox" "python" "neovim" "telegram-desktop" "discord" "pavucontrol" "pipewire" "neofetch" "kdeconnect")    # Replace with your Arch-specific packages
debian_packages=("package4" "package5" "package6")  # Replace with your Debian-specific packages

# Function to install packages for Arch-based systems using pacman
install_arch() {
    echo "Arch-based system selected. Installing packages..."
    sudo pacman -Syu --noconfirm "${arch_packages[@]}"
}

# Function to install packages for Debian-based systems using apt
install_debian() {
    echo "Debian-based system selected. Installing packages..."
    sudo apt update
    sudo apt install -y "${debian_packages[@]}"
}

# Prompt the user to select the system type
echo "Please select your system type:"
echo "1) Arch-based system (pacman)"
echo "2) Debian-based system (apt)"
read -p "Enter the number (1 or 2): " choice

# Handle the user's choice
case $choice in
    1)
        install_arch
        ;;
    2)
        install_debian
        ;;
    *)
        echo "Invalid choice. Please select 1 or 2."
        ;;
esac

