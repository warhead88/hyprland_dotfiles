#!/usr/bin/env bash

if [ -d "/home/$USER/.config/hypr" ]; then
  rm -R /home/$USER/.config/hypr
fi

mkdir -p /home/$USER/.config/hypr

dir="$(cd "$(dirname "$0")" && pwd)"
target_dir=$dir/dotfiles/hypr

cp $target_dir/hyprland.conf /home/$USER/.config/hypr/hyprland.conf
cp $target_dir/hyprpaper.conf /home/$USER/.config/hypr/hyprpaper.conf
