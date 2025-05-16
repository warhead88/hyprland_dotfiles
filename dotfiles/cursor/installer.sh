#!/usr/bin/env bash

if [ -d "/home/$USER/.icons/default" ]; then
  rm /home/$USER/.icons/default
fi

dir="$(cd "$(dirname "$0")" && pwd)"
target_dir=$dir/dotfiles/cursor

mkdir -p /home/$USER/.icons/default
cp $target_dir/index.theme /home/$USER/.icons/default/index.theme
