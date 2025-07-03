#
# SPDX-FileCopyrightText: 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from c2q device
$(call inherit-product, device/samsung/c2q/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := c2q
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_c2q
PRODUCT_MODEL := SM-N986N

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := c2q
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="c2qksw-user 13 TP1A.220624.014 N986NKSS8HYD1 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/c2qksw/c2q:11/RP1A.200720.012/N986NKSS8HYD1:user/release-keys
