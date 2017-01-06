#!/bin/bash
# -*- ENCODING: UTF-8 -*-
for link in $(cat /home/andres/Documents/hs-Documents/newText.txt); do
  google-chrome --incognito $link
done
