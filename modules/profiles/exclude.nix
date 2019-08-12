{ config, pkgs, lib, ... }:

with lib;
{
  # Disable some unused directories to save time downloading / extracting
  source.dirs = listToAttrs (map (dir: nameValuePair dir { enable = false; })
    [ "developers/samples/android"
      "developers/demos"

      "device/generic/car"
      "device/generic/qemu"
      "prebuilts/qemu-kernel"

      "device/generic/goldfish"
      "device/generic/goldfish-opengl"

      "device/linaro/bootloader/arm-trusted-firmware"
      "device/linaro/bootloader/edk2"
      "device/linaro/bootloader/OpenPlatformPkg"
      "device/linaro/hikey"
      "device/linaro/hikey-kernel"
      "device/linaro"

      "device/generic/mini-emulator-arm64"
      "device/generic/mini-emulator-armv7-a-neon"
      "device/generic/mini-emulator-mips"
      "device/generic/mini-emulator-mips64"
      "device/generic/mini-emulator-x86"
      "device/generic/mini-emulator-x86_64"
      "device/generic/mips"
      "device/generic/mips64"
      "device/google/accessory/arduino"
      "device/google/accessory/demokit"
      "device/google/atv"
      "device/google/contexthub"
      "device/google/cuttlefish"
      "device/google/cuttlefish_common"
      "device/google/cuttlefish_kernel"
      "device/google/cuttlefish_sepolicy"
      "device/google/hikey-kernel"
    ]);
}
