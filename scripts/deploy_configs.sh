#!/usr/bin/env bash
set -euo pipefail

CONFIG_SRC="$(dirname "$0")/../configs"
CONFIG_DST="$HOME/.config"

mkdir -p "$CONFIG_DST"
rsync -av --progress "$CONFIG_SRC/" "$CONFIG_DST/"
