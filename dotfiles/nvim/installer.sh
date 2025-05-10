#!/usr/bin/env bash

if [ -d "/home/$USER/.config/nvim" ]; then
  rm -R /home/$USER/.config/nvim
fi

mkdir -p /home/$USER/.config/nvim

git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim

rm -rf ~/.config/nvim/.git
