#!/usr/bin/env bash

cat ascii

read -p "Proceed with installation? [Y,N]: " pr

if [ "$pr" = "y" ] || [ "$pr" = "Y" ]; then
  source installer.sh
else
  echo "Leaving..."
fi
