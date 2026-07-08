#
# Copyright (C) 2026 IgorpetinDev
#
# SPDX-License-Identifier: Apache-2.0
#

# Set Device Path
DEVICE_PATH := device/samsung/a50

# Allow Missing Dependencies
ALLOW_MISSING_DEPENDENCIES := true

# Architecture (Exynos 9610 big cores)
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := cortex-a73

# Secondary Architecture (Exynos 9610 little cores)
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# BootIMG
BOARD_KERNEL_CMDLINE := \
    androidboot.hardware=exynos9610 \
    androidboot.selinux=permissive

BOARD_MKBOOTIMG_ARGS := \
    --base 0x10000000 \
    --kernel_offset 0x00008000 \
    --pagesize 2048 \
    --ramdisk_offset 0x01000000 \
    --tags_offset 0x00000100 \
    --header_version 1

# Kernel
TARGET_KERNEL_ARCH := $(TARGET_ARCH)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtboImage
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_INCLUDE_RECOVERY_DTBO := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := universal9610

# Platform
TARGET_BOARD_PLATFORM := exynos9610

## Partitions
# Userimages
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Partition sizes
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 57671680
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_DTBIMG_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67633152

# Extra Folders
BOARD_ROOT_EXTRA_FOLDERS += efs
BOARD_ROOT_EXTRA_FOLDERS += omr

# Mke2FS
TARGET_USES_MKE2FS := true

# Copy Out
TARGET_COPY_OUT_VENDOR := vendor

## Recovery Flags
# Recovery
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2340
TARGET_RECOVERY_PIXEL_FORMAT := ABGR_8888
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab
TARGET_USES_LOGD := true
RECOVERY_SDCARD_ON_DATA := true

# TWRP Configuration
TW_Y_OFFSET := 80
TW_H_OFFSET := -80
TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 162
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_USE_SERIALNO_PROPERTY_FOR_DEVICE_ID := true
TW_BACKUP_EXCLUSIONS := /data/fonts/files
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_REPACKTOOLS := true
TW_INCLUDE_FASTBOOTD := true
TWRP_INCLUDE_LOGCAT := true
