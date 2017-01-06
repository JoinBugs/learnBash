#! /bin/bash
#-*- ENCODING: UTF-8 -*-

echo ------------
for n in $(ls /dev/disk/by-label/); do
echo $n
file /dev/disk/by-label/$n | grep -o -i "[a-z]*[0-9]*$"
echo ------------
done
