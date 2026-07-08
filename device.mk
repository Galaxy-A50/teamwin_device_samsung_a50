#
# Copyright (C) 2026 IgorpetinDev
#
# SPDX-License-Identifier: Apache-2.0
#

# API
PRODUCT_SHIPPING_API_LEVEL := 28

# Disable dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := false

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service
