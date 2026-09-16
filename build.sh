#!/bin/bash
set -e

mkdir -p native_build
mkdir -p apktool_out/lib/arm64-v8a apktool_out/lib/armeabi-v7a

aarch64-linux-gnu-gcc -shared -fPIC -O2 -fno-stack-protector -fno-builtin \
    -I/usr/lib/jvm/java-21-openjdk-amd64/include \
    -I/usr/lib/jvm/java-21-openjdk-amd64/include/linux \
    -o native_build/libprotocol.so native_build/libprotocol.c

cp native_build/libprotocol.so apktool_out/lib/arm64-v8a/libprotocol.so
if [ -f apktool_out/lib/armeabi/libprotocol.so ]; then
    cp apktool_out/lib/armeabi/libprotocol.so apktool_out/lib/armeabi-v7a/libprotocol.so
fi

apktool b apktool_out -o sw2_rebuilt.apk
zipalign -p -f -v 4 sw2_rebuilt.apk SmartWatch_2_SW2_arm64_fixed.apk

if [ ! -f debug.keystore ]; then
    keytool -genkey -v -keystore debug.keystore -storepass android -alias androiddebugkey -keypass android -keyalg RSA -keysize 2048 -validity 10000 -dname "CN=Android Debug,O=Android,C=US"
fi

apksigner sign --ks debug.keystore --ks-pass pass:android --ks-key-alias androiddebugkey SmartWatch_2_SW2_arm64_fixed.apk
rm -f sw2_rebuilt.apk
