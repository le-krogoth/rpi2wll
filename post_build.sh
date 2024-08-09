#!/bin/bash

set -u
set -e

# copy default wifi config as base
cp auto_wifi.psk "${TARGET_DIR}/var/lib/iwd/auto_wifi.psk"

# make symlinks or netsurf wont find the fonts
cd ${TARGET_DIR}/usr/share/netsurf/
# ln -s ${TARGET_DIR}/usr/share/fonts/dejavu/DejaVuSans.ttf DejaVuSans.ttf
ln -s ${TARGET_DIR}/usr/share/fonts/dejavu/*.ttf .

# wget -O dejavu.zip https://github.com/dejavu-fonts/dejavu-fonts/releases/download/version_2_37/dejavu-fonts-ttf-2.37.zip
# unzip -p dejavu.zip dejavu-sans-ttf-2.37/ttf/DejaVuSans.ttf > "${TARGET_DIR}/usr/share/netsurf/DejaVuSans.ttf"
