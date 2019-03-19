#!/bin/bash

SN=`ioreg -c IOPlatformExpertDevice -d 2 | awk -F\" '/IOPlatformSerialNumber/{print $(NF-1)}'`

mkdir /Volumes/src
mount_afp "afp://leela:880admin@leela.pyramind.com/DSRepo/Files/" /Volumes/src

rm -rf /Volumes/Macintosh\ HD/System/Library/User\ Template/English.lproj/Library

cp -rf /Volumes/src/$SN/ /Volumes/Macintosh\ HD/System/Library/User\ Template/English.lproj/Library/ 

umount /Volumes/src

exit 0
