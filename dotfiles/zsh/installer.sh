#!/usr/bin/env bash

if [ -d "$ZSH/themes/" ]; then
  sudo rm -R $ZSH/themes
fi

sudo mkdir $ZSH/themes

cp .zshrc /home/$USER/.zshrc
cp -R nord $ZSH/themes
