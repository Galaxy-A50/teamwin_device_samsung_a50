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
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
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
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_INCLUDE_RECOVERY_DTBO := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := universal9610

