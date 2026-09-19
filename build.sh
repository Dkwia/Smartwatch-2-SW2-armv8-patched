#!/bin/bash
set -e

mkdir -p native_build
mkdir -p apktool_out/lib/arm64-v8a

aarch64-linux-gnu-gcc -shared -fPIC -O2 -nostdlib -fno-stack-protector -fno-builtin \
    -I/usr/lib/jvm/java-21-openjdk-amd64/include \
    -I/usr/lib/jvm/java-21-openjdk-amd64/include/linux \
    -o native_build/libprotocol.so native_build/libprotocol.c

cp native_build/libprotocol.so apktool_out/lib/arm64-v8a/libprotocol.so

apktool b apktool_out -o sw2_rebuilt.apk
zipalign -p -f -v 4 sw2_rebuilt.apk SmartWatch_2_SW2_arm64_fixed.apk

if [ -f release.keystore ]; then
    apksigner sign --ks release.keystore --ks-pass pass:androidrelease --ks-key-alias sw2release SmartWatch_2_SW2_arm64_fixed.apk
elif [ -f debug.keystore ]; then
    apksigner sign --ks debug.keystore --ks-pass pass:android --ks-key-alias androiddebugkey SmartWatch_2_SW2_arm64_fixed.apk
fi

rm -f sw2_rebuilt.apk
