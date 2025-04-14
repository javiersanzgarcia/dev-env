#!/usr/bin/env bash

echo " "
echo "#### Mounting exFAT partition"
echo " "

sudo mount -o uid=1000,gid=1000,umask=0777 -t exfat UUID="4870-BE1C" /media/pracker/Archivo
