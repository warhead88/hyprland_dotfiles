#!/usr/bin/env bash

dir="$(cd "$(dirname "$0")" && pwd)"
target_dir=$dir/dotfiles/zsh

cp $target_dir/.zshrc /home/$USER/.zshrc
sudo cp -R $target_dir/nord $ZSH/themes
