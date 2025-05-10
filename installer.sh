#!/usr/bin/env bash

sudo pacman -Syu --noconfirm
sudo pacman -S --needed --noconfirm - < pkglist.txt

if ! command -v yay &> /dev/null; then
  echo "Installing 'Yay'..."
  tmpdir=$(mktemp -d)
  git clone https://aur.archlinux.org/yay.git "$tmpdir"
  pushd "$tmpdir" || exit 1
  makepkg -si --noconfirm
  popd
  rm -rf "$tmpdir"
  echo "'Yay' is installed."
else
  echp "'Yay' has already installed."
fi

clear
mkdir /home/$USER/wallpapers
cp -r bin_dir ~/bin
sudo systemctl enable --now ufw
./configs.sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
