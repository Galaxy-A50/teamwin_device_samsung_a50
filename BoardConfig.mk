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

