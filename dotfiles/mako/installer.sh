#!/usr/bin/env bash

if [ -d "/home/$USER/.config/mako" ]; then
  rm -R /home/$USER/.config/mako
fi

mkdir -p /home/$USER/.config/mako
cp config /home/$USER/.config/mako/config
