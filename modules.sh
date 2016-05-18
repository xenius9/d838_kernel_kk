KERNELDIR=$(readlink -f .);
for i in $(find "$KERNELDIR"/ -name "*.ko"); do
rm -f "$i";
done;

make ARCH=arm CROSS_COMPILE=toolchain/arm-eabi-4.6/bin/arm-eabi- modules -j 9

for i in $(find "$KERNELDIR" -name '*.ko'); do
cp -av "$i" "$KERNELDIR"/work/modules/;
done;

"$KERNELDIR"/toolchain/arm-eabi-4.6/bin/arm-eabi-strip --strip-unneeded "$KERNELDIR"/work/modules/* 2>/dev/null
"$KERNELDIR"/toolchain/arm-eabi-4.6/bin/arm-eabi-strip --strip-debug "$KERNELDIR"/work/modules/* 2>/dev/null

