#!/usr/bin/env bash

if [ -d "/home/$USER/.config/fastfetch" ]; then
  rm -R /home/$USER/.config/fastfetch
fi

mkdir -p /home/$USER/.config/fastfetch
cp config.jsonc /home/$USER/.config/fastfetch/config.jsonc
