#!/usr/bin/env bash

if [ -d "/home/$USER/.config/hypr" ]; then
  rm -R /home/$USER/.config/hypr
fi

mkdir -p /home/$USER/.config/hypr
cp hyprland.conf /home/$USER/.config/hypr/hyprland.conf
cp hyprpaper.conf /home/$USER/.config/hypr/hyprpaper.conf
