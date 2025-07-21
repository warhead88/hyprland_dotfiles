#!/usr/bin/env bash
set -euo pipefail

PKGLIST_FILE="$(dirname "$0")/../pkglist.txt"

if [[ ! -f "$PKGLIST_FILE" ]]; then
  echo "File $PKGLIST_FILE was not found!" >&2
  exit 1
fi

readarray -t PACKAGES < <(grep -vE '^\s*#' "$PKGLIST_FILE" | grep -vE '^\s*$')

printf " - %s\n" "${PACKAGES[@]}"

sudo pacman -Sy --needed "${PACKAGES[@]}"
