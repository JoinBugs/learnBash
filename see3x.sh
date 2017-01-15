#!/bin/bash
# -*- ENCODING: UTF-8 -*-
for link in $(cat ~/hs-Documents/newText.txt); do
  google-chrome --incognito $link
done
