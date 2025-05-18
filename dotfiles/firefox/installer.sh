#!/usr/bin/env bash

if [ -d "/home/$USER/.config/firefox" ]; then
  rm -R /home/$USER/.config/firefox
fi

dir="$(cd "$(dirname "$0")" && pwd)"
target_dir=$dir/dotfiles/firefox

mkdir -p /home/$USER/.config/firefox
cp -R $target_dir/icons /home/$USER/.config/firefox/icons
cp $target_dir/index.html /home/$USER/.config/firefox/index.html
cp $target_dir/private.html /home/$USER/.config/firefox/private.html
cp $target_dir/style.css /home/$USER/.config/firefox/style.css
cp $target_dir/style_private.css /home/$USER/.config/firefox/style_private.css
