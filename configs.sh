#!/usr/bin/env bash

echo "Configuring fastfetch..."
source dotfiles/fastfetch/installer.sh
echo "Configuring firefox..."
source dotfiles/firefox/installer.sh
echo "Configuring hyprland..."
source dotfiles/hypr/installer.sh
echo "Configuring kitty..."
source dotfiles/kitty/installer.sh
echo "Configuring mako..."
source dotfiles/mako/installer.sh
echo "Configuring nvim..."
source dotfiles/nvim/installer.sh
echo "Configuring waybar..."
source dotfiles/waybar/installer.sh
echo "Configuring wofi..."
source dotfiles/wofi/installer.sh
echo "Configuring zsh..."
source dotfiles/zsh/installer.sh
echo "Configuration completed!"

echo "Now you have to reboot (preferably) or relogin"
