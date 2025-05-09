if [ -d "/home/$USER/.config/fastfetch"]; then
  rm -R /home/$USER/.config/fastfetch
fi

if [ -d "/home/$USER/.config/firefox"]; then
  rm -R /home/$USER/.config/firefox
fi

if [-d "/home/$USER/.config/hypr"]; then
  rm -R /home/$USER/.config/hypr
fi

if [-d "/home/$USER/.config/kitty"]; then
  rm -R /home/$USER/.config/kitty
fi

if [-d "/home/$USER/.config/mako"]; then
  rm -R /home/$USER/.config/mako
fi

if [-d "/home/$USER/.config/nvim"]; then
  sudo rm -R /home/$USER/.config/nvim
fi

if [-d "/home/$USER/.config/nvim"]; then
  sudo rm -R /home/$USER/.config/waybar
fi

if [-d "/home/$USER/.config/wofi"]; then
  rm -R /home/$USER/.config/wofi
fi

cp -R dotfiles/hypr /home/$USER/.config/
cp -R dotfiles/fastfetch /home/$USER/.config/
cp -R dotfiles/firefox /home/$USER/.config/
cp -R dotfiles/kitty /home/$USER/.config/
cp -R dotfiles/mako /home/$USER/.config/
cp -R dotfiles/nvim /home/$USER/.config/
sudo cp -R dotfiles/waybar /home/$USER/.config/
cp -R dotfiles/wofi /home/$USER/.config/
