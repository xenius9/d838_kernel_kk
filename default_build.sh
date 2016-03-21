#!/bin/sh

# clean stuff

./clean.sh

# set .config file
make b1w-open_tw-perf_defconfig

# build zImage
make ARCH=arm CROSS_COMPILE=toolchain/arm-eabi-4.8/bin/arm-eabi- zImage -j9

cp arch/arm/boot/zImage work/kernel/out/
cp ramdisk/ramdisk.cpio.lz4 work/kernel/out/

# build DTBS
./build_dtbs.sh

./final_build.sh







