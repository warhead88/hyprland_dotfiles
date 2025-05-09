#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Wallpapers set to $1.$2"
  exit 1
fi

WALL_DIR="$HOME/wallpapers"

hyprctl hyprpaper preload "$WALL_DIR/$1.$2"
hyprctl hyprpaper wallpaper "DP-1, $WALL_DIR/$1.$2"
hyprctl hyprpaper wallpaper "HDMI-A-2, $WALL_DIR/$1.$2"
