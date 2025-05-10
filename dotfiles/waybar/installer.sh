#!/usr/bin/env bash

if [ -d "/home/$USER/.config/waybar" ]; then
  sudo rm -R /home/$USER/.config/waybar
fi

sudo mkdir -p /home/$USER/.config/waybar

dir="$(cd "$(dirname "$0")" && pwd)"
target_dir=$dir/dotfiles/waybar

sudo cp $target_dir/config.jsonc /home/$USER/.config/waybar/config.jsonc
sudo cp $target_dir/style.css /home/$USER/.config/waybar/styke.css
