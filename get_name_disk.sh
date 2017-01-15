#! /bin/bash
#-*- ENCODING: UTF-8 -*-

echo ------------
for n in $(ls /dev/disk/by-label/); do
echo $n
file /dev/disk/by-label/$n | grep -o -i "[a-z]*[0-9]*$"
fdisk -l | grep -i "$(file /dev/disk/by-label/$n | grep -oi "[a-z]\{3\}[0-9]*$")" | grep -o "[^ ][0-9]*.[0-9]*[GM] "
echo ------------
done
