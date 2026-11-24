#!/usr/bin/env sh

# --prompt='logout... > '
chosen=$(printf "lock\nsuspend\nhybrid-sleep\nhibernate\nexit\nreboot\npoweroff" | \
    fuzzel --dmenu \
           --lines=7 \
           --width=13)

case "$chosen" in
    "lock")         swaylock -f -c 202020 ;;
    "suspend")      systemctl suspend ;;
    "hybrid-sleep") systemctl hybrid-sleep ;;
    "hibernate")    systemctl hibernate ;;
    "exit")         swaymsg exit ;;
    "reboot")       systemctl reboot ;;
    "poweroff")     systemctl poweroff ;;
esac
