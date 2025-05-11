#!/usr/bin/env bash

if [ -d "/home/$USER/.config/fastfetch" ]; then
  rm -R /home/$USER/.config/fastfetch
fi

dir="$(cd "$(dirname "$0")" && pwd)"
target_dir=$dir/dotfiles/fastfetch

mkdir -p /home/$USER/.config/fastfetch
cp $target_dir/config.jsonc /home/$USER/.config/fastfetch/config.jsonc
cp $target_dir/art /home/$USER/.config/fastfetch/art
