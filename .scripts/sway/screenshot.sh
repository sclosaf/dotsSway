#!/bin/bash

mkdir -p ~/Pictures/screenshots

case $1 in
    window) grim -g "$(swaymsg -t get_tree | jq -r '.. | select(.focused?) | .rect | "\(.x),\(.y) \(.width)x\(.height)"')" - | wl-copy -t image/png;;
    select) grim -g "$(slurp)" - | wl-copy -t image/png;;
    *) exit 1;;
esac

wl-paste > ~/Pictures/screenshots/screenshot_$(date +'%Y-%m-%d_%H-%M-%S.png')
