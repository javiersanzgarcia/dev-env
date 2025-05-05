#!/usr/bin/env bash

# TODO: Review this script in functional arch system

echo " "
echo "#### Clean Cahce and Update"
echo " "

sudo pacman -Scc
sudo pacman -Syyu

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
