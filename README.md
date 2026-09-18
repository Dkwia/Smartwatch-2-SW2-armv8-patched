# Sony SmartWatch 2 (SW2) - ARMv8 64-bit Patch

Compatibility patch for the Sony SmartWatch 2 companion application (`com.sonymobile.smartconnect.smartwatch2`, v1.6.31 / build 10631) for modern 64-bit Android devices (ARMv8/ARMv9, OnePlus 12/13/15, Pixel, Galaxy, etc.).

## Problems Fixed

1. **64-bit Architecture**:
   - The original Sony release only shipped 32-bit `armeabi/libprotocol.so`.
   - Modern SoCs (Snapdragon 8 Gen 3/4/Elite, Dimensity 9300+) and modern 64-bit Android OS builds have dropped 32-bit execution entirely.
   - Cross-compiled a freestanding 64-bit `libprotocol.so` (`arm64-v8a`) exporting the necessary JNI protocol functions and native CIDs.

2. **Target SDK & Direct Installation**:
   - Updated `targetSdkVersion` to `28` (Android 9 Pie) to bypass Android 14/15/16's deprecated target SDK block.
   - The APK can now be installed directly on-device by tapping the file without requiring ADB bypass flags.

3. **Android 12+ Manifest Enforcement**:
   - Explicitly added `android:exported` to all activities, receivers, and services with intent filters.

4. **Modern Permissions**:
   - Declared `BLUETOOTH_CONNECT`, `BLUETOOTH_SCAN`, and `POST_NOTIFICATIONS` for Android 12/13+.

5. **Launcher Entry**:
   - Added `android.intent.category.LAUNCHER` to `ExtensionsListActivity` so the companion settings UI can be opened directly from the home screen launcher without requiring Sony Smart Connect.

6. **Signature & Alignment**:
   - Aligned to 4-byte boundaries with `zipalign`.
   - Signed with v1, v2, and v3 signature schemes.

## Installation

Download the release APK and tap to install directly on your device.

Alternatively, install using ADB:

```bash
adb install SmartWatch_2_SW2_arm64_fixed.apk
```

### Post-Install Setup

1. Open **Settings → Apps → SmartWatch 2 SW2 → Permissions** and grant:
   - Nearby devices / Bluetooth
   - Notifications
   - Contacts / Storage (optional, for notifications syncing)
2. Under **Battery**, set background activity to **Unrestricted** to prevent the OS from killing the Bluetooth connection service.

## Building from Source

Prerequisites:
- `apktool`
- `zipalign`
- `apksigner`
- `aarch64-linux-gnu-gcc`

Run:

```bash
./build.sh
```
