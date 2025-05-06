#!/usr/bin/env bash

echo " "
echo "#### Clean Cache and Update"
echo " "

sudo pacman -Scc
sudo pacman -Syyu
sudo snap refresh

echo " "
echo "Removes old revisions of snaps"
echo "CLOSE ALL SNAPS BEFORE RUNNING THIS"
echo " "

set -eu
snap list --all | awk '/disabled/{print $1, $3}' |
  while read snapname revision; do
    sudo snap remove "$snapname" --revision="$revision"
  done


echo " "
echo "#### Clear systemd journal logs"
echo " "

sudo journalctl --vacuum-time=3d

echo " "
echo "#### Clean Trash bin"
echo " "

trash-empty -f

echo " "
echo "Finish cleaning"
