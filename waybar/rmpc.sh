#!/bin/sh

pgrep -x rmpc >/dev/null || exit 0

status="$(rmpc status 2>/dev/null)" || exit 0
state="$(printf '%s' "$status" | jq -r '.state')"

[ "$state" = "Stop" ] && exit 0

song="$(rmpc song 2>/dev/null | jq -r '.metadata | "\(.artist // "Unknown Artist") - \(.title // "Unknown Title")"')"

printf '{"text":"󰐊 %s","tooltip":"rmpc"}\n' "$song"
