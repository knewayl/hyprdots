#!/bin/bash

echo "setting up software"
sudo pacman -Syu hyprland hyprlock hypridle hyprpaper wofi mako kitty waybar ly neovim ttf-jetbrains-mono otf-font-awesome ttf-fira-code jdk-openjdk python-pipx grim slurp wf-recorder flatpak neofetch nvim
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cd auto-cpufreq && sudo ./auto-cpufreq-installer
sudo auto-cpufreq --install
yay -S youtube-music wallust java-openjfx visual-studio-code-bin
sudo systemctl enable ly
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

echo "setting up config filez"

cd ~/hyprdots/
cp -r hypr ~/.config/
sudo cp -r waybar /etc/xdg/
cp -r kitty ~/.config/
cp -r wallust ~/.config/
cp -r hyprfilez ~/
