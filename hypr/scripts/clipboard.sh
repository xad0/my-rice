#!/bin/bash

CLEAR="󰆴  Clear Clipboard"

CHOICE=$(printf "%s\n%s" "$CLEAR" "$(cliphist list)" | rofi -dmenu -i -p "Clipboard" -lines 15)

if [ "$CHOICE" = "$CLEAR" ]; then
    pkill -f "wl-paste --type text --watch cliphist store"

    wl-copy --clear

    cliphist wipe
    rm -rf "$HOME/.cache/cliphist"

    mkdir -p "$HOME/.cache/cliphist"

    wl-paste --type text --watch cliphist store &

    notify-send "Clipboard" "History cleared"
    exit 0
fi

if [ -n "$CHOICE" ]; then
    echo "$CHOICE" | cliphist decode | wl-copy
fi
