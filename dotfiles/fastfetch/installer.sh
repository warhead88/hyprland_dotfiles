if [ -d "/home/$USER/.config/fastfetch" ]; then
  rm -R /home/$USER/.config/fastfetch
fi

cp config.jsonc /home/$USER/.config/fastfetch/config.jsonc
