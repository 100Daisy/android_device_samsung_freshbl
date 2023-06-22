#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from freshbl device
$(call inherit-product, device/samsung/freshbl/device.mk)

PRODUCT_DEVICE := freshbl
PRODUCT_NAME := twrp_freshbl
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-R870
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-wear

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="freshbl-user 11 RWD1.210503.001 R870XXU1AUGJ release-keys"

BUILD_FINGERPRINT := samsung/freshbl/freshbl:11/RWD1.210503.001/R870XXU1AUGJ:user/release-keys
