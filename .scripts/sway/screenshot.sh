#!/bin/bash

mkdir -p ~/Pictures/screenshots
if [ $1 == "window" ]; then
    DIM=$(swaymsg -t get_tree | jq -r '.. | select(.focused?) | .rect | "\(.x),\(.y) \(.width)x\(.height)"')
elif [ $1 == "select" ]; then 
    DIM="$(slurp)"
fi

if [ "$DIM" != "selection cancelled" ]; then 
    grim -g "$DIM" - | wl-copy -t image/png
    wl-paste > ~/Pictures/screenshots/screenshot_$(date +'%Y-%m-%d_%H-%M-%S.png')
fi
