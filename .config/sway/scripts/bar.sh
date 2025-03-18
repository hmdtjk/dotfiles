#
# ~/.config/sway/scripts/bar.sh
#

echo \
    $(ip -o addr show scope global | awk '/^[0-9]:/{print $2, $4}' | cut -f1 -d '/')\
    "|"\
    \/home\/ $(df -h $HOME | tail -n1 | awk '{print $3}') \($(df -h $HOME | tail -n1 | awk '{print $5}')\)\
    "|"\
    $(free -m | awk 'NR == 2 {printf "%sMB (%.2f%%)\n", $3, $3 * 100 / $2}')\
    "|"\
    $(cut -d" " -f1 /proc/loadavg) \($(sed 's/\(.\)..$/.\1°C/' /sys/class/thermal/thermal_zone1/temp)\)\
    "|"\
    $(date +"%a, %b %d - %H:%M:%S")
