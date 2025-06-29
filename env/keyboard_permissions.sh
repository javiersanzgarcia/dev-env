#!/usr/bin/env bash

echo "Setting permissions for /dev/hidraw*"

sudo chmod 777 /dev/hidraw*

echo "Setting permissions for /dev/usb"

sudo chmod -R 777 /dev/usb

echo "Setting permissions for /dev/input"

sudo chmod -R 777 /dev/input
