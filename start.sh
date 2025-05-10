#!/usr/bin/env bash

clear

cat ascii

read -p "Proceed with installation? [Y,N]: " pr

if [ "$pr" = "y" ] || [ "$pr" = "Y" ]; then
  source installer.sh
  source configs.sh
else
  echo "Leaving..."
fi
