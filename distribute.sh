#!/usr/bin/env sh

mkdir -p ~/.config

# bash
cp shared.bashrc ~/.shared.bashrc

# lxqt
# rm -rf ~/.config/lxqt
# cp -r lxqt ~/.config

# xfce
# rm -rf ~/.config/xfce4
# cp -r xfce4 ~/.config

# i3
# rm -rf ~/.config/i3
# cp -r i3 ~/.config

# sway
rm -rf ~/.config/sway
cp -r sway ~/.config

# rofi
# rm -rf ~/.config/rofi
# cp -r rofi ~/.config

# fuzzel
rm -rf ~/.config/fuzzel
cp -r fuzzel ~/.config

# waybar
rm -rf ~/.config/waybar
cp -r waybar ~/.config

# niri
# rm -rf ~/.config/niri
# cp -r niri ~/.config

# polybar
# rm -rf ~/.config/polybar
# cp -r polybar ~/.config

# foot
rm -rf ~/.config/foot
cp -r foot ~/.config

# vscode
# mkdir -p ~/.config/Code/User
# cp vscode_settings.json    ~/.config/Code/User/settings.json
# cp vscode_keybindings.json ~/.config/Code/User/keybindings.json

# zed
rm -rf ~/.config/zed
cp -r zed ~/.config

# portals
mkdir -p ~/.config/xdg-desktop-portal
cp sway-portals.conf ~/.config/xdg-desktop-portal
