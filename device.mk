#
# SPDX-FileCopyrightText: 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8250-common
$(call inherit-product, device/samsung/sm8250-common/common.mk)

DEVICE_PATH := device/samsung/c2q

$(call inherit-product, device/samsung/c2q/rootdir/Android.mk)

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Inherit audio copy module files configuration
ifeq ($(TARGET_DEVICE),c2q)
include $(call all-*,$(LOCAL_PATH))/device/samsung/c2q/audio/
endif

# Boot animation
TARGET_SCREEN_HEIGHT := 1080
TARGET_SCREEN_WIDTH := 2316

# Inherit nfc  copy module files configuration
ifeq ($(TARGET_DEVICE),c2q)
include $(call all-*,$(LOCAL_PATH))/device/samsung/c2q/configs/nfc/
endif

# Inherit sensors copy module files configuration
ifeq ($(TARGET_DEVICE),c2q)
include $(call all-*,$(LOCAL_PATH))/sensors/
endif

# Inherit GPS copy module files configuration
ifeq ($(TARGET_DEVICE),c2q)
include $(call all-*,$(LOCAL_PATH))/gps/
endif


# Inherit keylayout copy module files configuration
ifeq ($(TARGET_DEVICE),c2q)
include $(call all-*,$(LOCAL_PATH))/keylayout/
endif


# Inherit overlay copy module files configuration
ifeq ($(TARGET_DEVICE),c2q)
include $(call all-*,$(LOCAL_PATH))/overlay/
endif


# Inherit secomp copy module files configuration
ifeq ($(TARGET_DEVICE),c2q)
include $(call all-*,$(LOCAL_PATH))/seccomp/
endif


# Inherit wifi copy module files configuration
ifeq ($(TARGET_DEVICE),c2q)
include $(call all-*,$(LOCAL_PATH))/wifi/
endif


# Inherit from vendor blobs
$(call inherit-product-if-exists, vendor/samsung/c2q/c2q-vendor.mk)
