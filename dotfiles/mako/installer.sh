#!/usr/bin/env bash

if [ -d "/home/$USER/.config/mako" ]; then
  rm -R /home/$USER/.config/mako
fi

mkdir -p /home/$USER/.config/mako

dir="$(cd "$(dirname "$0")" && pwd)"
target_dir=$dir/dotfiles/mako

cp $target_dir/config /home/$USER/.config/mako/config
