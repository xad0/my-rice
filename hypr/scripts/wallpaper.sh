#!/bin/bash

DIR="/home/adomas/netrinti/Pictures/Pictures/wallpapers"

WALL=$(find "$DIR" -type f | shuf -n 1)

if [ -z "$WALL" ]; then
    echo "No wallpapers found in $DIR"
    exit 1
fi

awww img "$WALL" \
    --transition-type wave \
    --transition-duration 2
