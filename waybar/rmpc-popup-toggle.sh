#!/bin/sh

if eww active-windows 2>/dev/null | grep -q '^player$'; then
    eww close player-catcher player
else
    eww open player-catcher
    eww open player
fi
