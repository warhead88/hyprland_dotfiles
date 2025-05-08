rm -R /home/$USER/.config/fastfetch
rm -R /home/$USER/.config/firefox
rm -R /home/$USER/.config/hypr
rm -R /home/$USER/.config/kitty
rm -R /home/$USER/.config/mako
rm -R /home/$USER/.config/nvim
sudo rm -R /home/$USER/.config/waybar
rm -R /home/$USER/.config/wofi

cp -R dotfiles/hypr /home/$USER/.config/
cp -R dotfiles/fastfetch /home/$USER/.config/
cp -R dotfiles/firefox /home/$USER/.config/
cp -R dotfiles/kitty /home/$USER/.config/
cp -R dotfiles/mako /home/$USER/.config/
cp -R dotfiles/nvim /home/$USER/.config/
sudo cp -R dotfiles/waybar /home/$USER/.config/
cp -R dotfiles/wofi /home/$USER/.config/
