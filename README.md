# VCam Demo - Modified Build

nmmp VM-protected APK with reversed bytecode.

## Build

Push to `main` branch → GitHub Actions auto-builds → Download APK from Actions artifacts.

## Modifications

- Added "VCam Reversed" banner to main activity layout
- Original native protection (libnmmp.so) preserved
- All app functionality unchanged

## Reverse Engineering Stats

- 146/256 custom opcodes mapped
- 96.7% bytecode decoded (2960/3062 instructions)
- 86 VM-protected methods recovered
- 160 native method signatures identified
