#! /bin/sh
# Set Resolution
xrandr --output VGA-0 --mode 1128x752 &

# Set Wallpaper
nitrogen --restore &

# # Systray and Xmobar
# xmobar &

# Emacs Daemon
emacs --daemon &
