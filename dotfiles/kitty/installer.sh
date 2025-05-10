#!/usr/bin/env bash

if [ -d "/home/$USER/.config/kitty" ]; then
  rm -R /home/$USER/.config/kitty
fi

mkdir -p /home/$USER/.config/kitty
cp kitty.conf /home/$USER/.config/kitty/kitty.conf
cp nord.conf /home/$USER/.config/kitty/nord.conf
