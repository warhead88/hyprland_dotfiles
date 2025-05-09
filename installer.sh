echo "Starting installing process."
sudo pacman -Syu --noconfirm
sudo pacman -S --needed - < pkglist.txt

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

python -m venv instenv
source instenv/bin/activate
pip install art
clear
python3 setup_config.py
deactivate
rm -R instenv
mkdir /home/$USER/wallpapers
cp -r bin_dir ~/bin
