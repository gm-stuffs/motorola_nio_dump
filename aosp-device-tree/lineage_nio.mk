#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from nio device
$(call inherit-product, device/motorola/nio/device.mk)

PRODUCT_DEVICE := nio
PRODUCT_NAME := lineage_nio
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(100)
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="nio_retail-user 11 S1RT32.41-20-16 ad550 release-keys"

BUILD_FINGERPRINT := motorola/nio_retail/nio:11/S1RT32.41-20-16/ad550:user/release-keys
