#!/usr/bin/env sh

# bash
cp ~/.shared.bashrc shared.bashrc

# lxqt
# rm -rf lxqt
# cp -r ~/.config/lxqt .
# rm lxqt/lxqt-config-monitor.conf

# xfce
rm -rf xfce4
cp -r ~/.config/xfce4 .

# thunar
rm -rf Thunar
cp -r ~/.config/Thunar .

# i3
# rm -rf i3
# cp -r ~/.config/i3 .

# sway
rm -rf sway
cp -r ~/.config/sway .

# kanshi
rm -rf kanshi
cp -r ~/.config/kanshi .

# rofi
# rm -rf rofi
# cp -r ~/.config/rofi .

# fuzzel
rm -rf fuzzel
cp -r ~/.config/fuzzel .

# waybar
rm -rf waybar
cp -r ~/.config/waybar .

# niri
# rm -rf niri
# cp -r ~/.config/niri .

# polybar
# rm -rf polybar
# cp -r ~/.config/polybar .

# foot
rm -rf foot
cp -r ~/.config/foot .

# swappy
rm -rf swappy
cp -r ~/.config/swappy .

# vscode
# cp ~/.config/Code/User/settings.json    vscode_settings.json
# cp ~/.config/Code/User/keybindings.json vscode_keybindings.json

# zed
rm -rf zed
cp -r ~/.config/zed .

# portals
cp ~/.config/xdg-desktop-portal/sway-portals.conf sway-portals.conf
