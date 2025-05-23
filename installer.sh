#!/usr/bin/env bash

sudo pacman -Syu --noconfirm

read -p "Nvidia videocard? [Y/N]: " pr

if [ "$pr" = "y" ] || [ "$pr" = "Y" ]; then
  sudo pacman -S --noconfirm nvidia-dkms nvidia-utils
fi

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
echo "1" > spec_files/condition
echo "Good for you!" > spec_files/message
git clone --depth 1 https://github.com/EliverLara/Nordic /usr/share/themes
gsettings set org.gnome.desktop.interface gtk-theme Nordic
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
