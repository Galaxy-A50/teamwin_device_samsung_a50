#
# Copyright (C) 2026 IgorpetinDev
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifneq ($(filter a50,$(TARGET_DEVICE)),)
    include $(call all-makefiles-under,$(LOCAL_PATH))
endif
