#
# ~/.config/sway/scripts/output.sh
#

if grep -q closed /proc/acpi/button/lid/LID/state; then
    swaymsg output eDP-1 disable
fi

ln -sf $(find ~/Pictures/Wallpapers/ -type f | shuf -n 1) ~/Pictures/Wallpapers/main
