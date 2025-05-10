#!/usr/bin/env bash

if [ -d "/home/$USER/.config/wofi" ]; then
  rm -R /home/$USER/.config/wofi
fi

mkdir -p /home/$USER/.config/wofi

dir="$(cd "$(dirname "$0")" && pwd)"
target_dir=$dir/dotfiles/wofi

cp $target_dir/style.css /home/$USER/.config/wofi
