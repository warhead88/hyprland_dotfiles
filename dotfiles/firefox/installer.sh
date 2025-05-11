#!/usr/bin/env bash

if [ -d "/home/$USER/.config/firefox"]; then
  rm -R /home/$USER/.config/firefox
fi

dir="$(cd "$(dirname "$0")" && pwd)"
target_dir=$dir/dotfiles/firefox

mkdir -p /home/$USER/.config/firefox
cp -R icons /home/$USER/.config/firefox/icons
cp index.html /home/$USER/.config/firefox/index.html
cp private.html /home/$USER/.config/firefox/private.html
cp style.css /home/$USER/.config/firefox/style.css
cp style_private.css /home/$USER/.config/firefox/style.css
