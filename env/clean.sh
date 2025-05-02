#!/usr/bin/env bash

# TODO: Review this script in functional arch system

echo " "
echo "#### Updating and upgrading"
echo " "

sudo apt update && sudo apt upgrade -y && sudo apt full-upgrade -y &&
  echo " " && echo "#### Cleaning APT" && echo " " && sudo apt autoclean &&
  sudo apt clean && sudo apt autoremove --purge && sudo snap refresh

echo " "
echo "#### Clear systemd journal logs"
echo " "

sudo journalctl --vacuum-time=3d

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
echo "#### Clean Trash bin"
echo " "

trash-empty -f

echo " "
echo "Finish cleaning"
