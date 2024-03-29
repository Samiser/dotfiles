#!/bin/sh
# Give dmenu list of all unicode characters to copy.
# Shows the selected character in dunst if running.

# Must have xclip installed to even show menu.
xclip -h >/dev/null || exit

chosen=$(grep -v "#" ~/.scripts/emojis | rofi -dmenu -i -l 15 -fn Monospace-18)

[ "$chosen" != "" ] || exit

c=$(echo "$chosen" | sed "s/ .*//")
echo "$c" | tr -d '\n' | xclip -selection clipboard
notify-send "'$c' copied to clipboard." &
echo "$c" | tr -d '\n' | xclip
notify-send "'$c' copied to primary." &

#s=$(echo "$chosen" | sed "s/.*; //" | awk '{print $1}')
