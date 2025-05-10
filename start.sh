#!/usr/bin/env bash

clear

cat ascii

read -p "Proceed with installation? [Y,N]: " pr

if [ "$pr" = "y" ] || [ "$pr" = "Y" ]; then
  ./installer.sh
else
  echo "Leaving..."
fi
