#!/bin/bash

#base progrmas:
sudo pacman -Syyu
sudo pacman -S brightnessctl hyprland kitty waybar wofi
yay -S wallust

# copying files
cp -r hypr ~/.config/
cp -r wallust ~/.config/
cp -r waybar /etc/xdg/
