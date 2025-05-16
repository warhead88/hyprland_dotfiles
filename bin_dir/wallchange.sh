#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/wallpapers/"

RANDOM_WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname '*.jpg' -o -iname '*.png' -o -iname '*.jpeg' \) | shuf -n 1)

swww img "$RANDOM_WALLPAPER" --transition-type wipe --transition-angle 45 --transition-fps 144
