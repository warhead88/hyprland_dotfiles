if [ -d "/home/$USER/.config/hypr" ]; then
  rm -R /home/$USER/.config/hypr
fi

cp -R hyprland.conf /home/$USER/.config/hypr
