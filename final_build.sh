#!/bin/sh

# this assumes that zImage, dt.img and ramdisk.cpio.lz4 exists

./executables/mkbootimg --kernel work/kernel/out/zImage --ramdisk work/kernel/out/ramdisk.cpio.lz4 --cmdline "console=ttyHSL0,115200,n8 user_debug=31 ehci-hcd.park=3 msm_rtb.filter=0x0 androidboot.hardware=b1w" --base 00000000 --ramdisk_offset 0x02000000 --tags_offset 0x01E00000 --pagesize 2048 --dt work/kernel/out/dt.img -o work/final/boot.img

# Bump boot.img
python open_bump.py work/final/boot.img

# Copy back boot_bumped.img to Windows for flashing
cp work/final/boot_bumped.img work/bumped_kernel/boot.img

