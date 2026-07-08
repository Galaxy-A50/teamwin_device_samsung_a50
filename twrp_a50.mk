#
# Copyright (C) 2026 IgorpetinDev
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from common TWRP config
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from A50 Device
$(call inherit-product, device/samsung/a50/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a50
PRODUCT_NAME := twrp_a50
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A505F
PRODUCT_MANUFACTURER := samsung
