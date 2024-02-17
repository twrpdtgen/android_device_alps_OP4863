#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from OP4863 device
$(call inherit-product, device/alps/OP4863/device.mk)

PRODUCT_DEVICE := OP4863
PRODUCT_NAME := omni_OP4863
PRODUCT_BRAND := alps
PRODUCT_MODEL := oplus_mssi_64_cn
PRODUCT_MANUFACTURER := alps

PRODUCT_GMS_CLIENTID_BASE := android-alps

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_oplus_mssi_64_cn-user 11 RP1A.200720.011 1648824731399 release-keys"

BUILD_FINGERPRINT := alps/sys_oplus_mssi_64_cn/oplus_mssi_64_cn:11/RP1A.200720.011/1648824731399:user/release-keys
