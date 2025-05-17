#!/usr/bin/env bash

dir="$(cd "$(dirname "$0")" && pwd)"
target_dir=$dir/dotfiles

cp -R $target_dir/wallpapers /home/$USER/
