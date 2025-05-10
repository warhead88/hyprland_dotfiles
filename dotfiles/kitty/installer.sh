#!/usr/bin/env bash

if [ -d "/home/$USER/.config/kitty" ]; then
  rm -R /home/$USER/.config/kitty
fi

mkdir -p /home/$USER/.config/kitty

dir="$(cd "$(dirname "$0")" && pwd)"
target_dir=$dir/dotfiles/kitty

cp $target_dir/kitty.conf /home/$USER/.config/kitty/kitty.conf
cp $target_dir/nord.conf /home/$USER/.config/kitty/nord.conf
