#!/bin/bash

DIR="/home/adomas/my-rice/wallpapers/"

WALL=$(find "$DIR" -type f | while read -r img; do
  echo -en "$img\0icon\x1f$img\n"
done | rofi -dmenu -show-icons -i -p "Wallpaper")

if [ -n "$WALL" ]; then
  awww img "$WALL" \
    --transition-type wave \
    --transition-duration 2
fi
