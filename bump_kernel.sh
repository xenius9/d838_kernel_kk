#!/bin/sh

# Copy boot.img from Windows
# cp ~/AndroidWindows/xenius9_D838/boot.img ~/android/kernel/out

# Bump boot.img
python work/Open_Bump/open_bump.py ~/android/kernel/out/boot.img

# Copy back boot_bumped.img to Windows for flashing
cp ~/android/kernel/out/boot_bumped.img ~/AndroidWindows/xenius9_D838/boot.img


