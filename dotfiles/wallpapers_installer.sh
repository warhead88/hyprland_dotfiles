#!/usr/bin/env bash

dir="$(cd "$(dirname "$0")" && pwd)"
target_dir=$dir/dotfiles

cp -R $tarhget_dir/wallpapers /home/$USER/wallpapers
