#!/usr/bin/env bash

if [ -d "/home/$USER/.config/wofi" ]; then
  rm -R /home/$USER/.config/wofi
fi

mkdir -p /home/$USER/.config/wofi

cp style.css /home/$USER/.config/wofi
