#!/usr/bin/env bash

if [ -d "/home/$USER/.config/waybar" ]; then
  sudo rm -R /home/$USER/.config/waybar
fi

sudo mkdir -p /home/$USER/.config/waybar

sudo cp config.jsonc /home/$USER/.config/waybar/config.jsonc
sudo cp style.css /home/$USER/.config/waybar/styke.css
