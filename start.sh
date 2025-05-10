#!/usr/bin/env bash

clear

cat spec_files/ascii

cat spec_files/message

if [ ! -s "spec_files/condition" ]; then
  read -p "Proceed with installation? [Y/N]: " pr
  if [ "$pr" = "y" ] || [ "$pr" = "Y" ]; then
    ./installer.sh
  else
    echo "Leaving..."
  fi
else
  ./configs.sh
fi
