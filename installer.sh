echo "Starting installing process."
sudo pacman -Syu --noconfirm
sudo pacman -S --needed - < pkglist.txt
python -m venv instenv
source instenv/bin/activate
pip install art
clear
python3 setup_config.py
deactivate
rm -R instenv
