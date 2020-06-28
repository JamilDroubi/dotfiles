#! /bin/sh
# Set Resolution for VirtualBox
xrandr --output VGA-0 --mode 1128x752 &

# Set Wallpaper
nitrogen --restore &

# Emacs Daemon
emacs --daemon &

# Status Bar stuff
dte() {
    dte="$(date +%T)"
    echo -e "\033[0;36m🕑\033[m [$dte]"
}
unm() {
    unm="$(uname -or)"
    echo -e "\033[0;36m🖥\033[m $unm"
}
while true; do
    xsetroot -name " $(unm) | $(dte)"
    sleep 60
done &
