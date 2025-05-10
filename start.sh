#!/usr/bin/env bash

clear

cat spec_files/ascii

echo message

read -p "Proceed with installation? [Y,N]: " pr

if [ ! -s "spec_files/condition" ]; then
  if [ "$pr" = "y" ] || [ "$pr" = "Y" ]; then
    ./installer.sh
  else
    echo "Leaving..."
  fi
else
  ./configs.sh
fi
