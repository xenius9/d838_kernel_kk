#!/bin/sh
make ARCH=arm CROSS_COMPILE=toolchain/arm-eabi-4.8/bin/arm-eabi- msm8974-v2-b1w.dtb
make ARCH=arm CROSS_COMPILE=toolchain/arm-eabi-4.8/bin/arm-eabi- msm8974-v2-2-b1w.dtb
make ARCH=arm CROSS_COMPILE=toolchain/arm-eabi-4.8/bin/arm-eabi- msm8974-b1w.dtb
./executables/dtbTool -v -s 2048 -o work/kernel/out/dt.img -p ./scripts/dtc/ ./arch/arm/boot/
