#!/usr/bin/env bash

WALLPAPERS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/../wallpapers" && pwd)"
INTERVAL=300

echo "Wallpaper rotation starting"
echo "Directory: $WALLPAPERS_DIR"
echo "Interval: ${INTERVAL}s"

wallpapers=("$WALLPAPERS_DIR"/*.{jpg,png})

if [ ${#wallpapers[@]} -eq 0 ]; then
  echo "No wallpapers found in $WALLPAPERS_DIR"
  exit 1
fi

echo "Found ${#wallpapers[@]} wallpapers"

index=0
while true; do
  wallpaper="${wallpapers[$index]}"
  if [ -f "$wallpaper" ]; then
    echo "Setting: $wallpaper"
    gsettings set org.gnome.desktop.background picture-uri "file://$wallpaper"
    gsettings set org.gnome.desktop.background picture-uri-dark "file://$wallpaper"
  fi

  index=$(( (index + 1) % ${#wallpapers[@]} ))
  sleep "$INTERVAL"
done
