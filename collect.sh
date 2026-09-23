#!/usr/bin/env sh

# bash
cp ~/.shared.bashrc shared.bashrc

# lxqt
rm -rf lxqt
cp -r ~/.config/lxqt .
rm lxqt/lxqt-config-monitor.conf

# xfce
rm -rf xfce4
cp -r ~/.config/xfce4 .

# i3
rm -rf i3
cp -r ~/.config/i3 .

# rofi
rm -rf rofi
cp -r ~/.config/rofi .

# polybar
rm -rf polybar
cp -r ~/.config/polybar .

# vscode
cp ~/.config/Code/User/settings.json    vscode_settings.json
cp ~/.config/Code/User/keybindings.json vscode_keybindings.json

# zed
rm -rf zed
cp -r ~/.config/zed .
