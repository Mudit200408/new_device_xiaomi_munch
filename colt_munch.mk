#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common ColtOS stuff.
$(call inherit-product, vendor/colt/config/common_full_phone.mk)

# Inherit from munch device
$(call inherit-product, device/xiaomi/munch/device.mk)

# Inherit viper4android stuff
$(call inherit-product-if-exists, packages/apps/ViPER4AndroidFX/config.mk)

#Colt
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USE_PIXEL_CHARGER := true
TARGET_USES_BLUR := true
TARGET_BOOT_ANIMATION_RES := 1080

# Gapps
WITH_GAPPS := true
TARGET_INCLUDE_NGA := true

# Official
COLT_BUILD_TYPE := Official
COLT_BUILD_MAINTAINER := Rakesh Bhatra

PRODUCT_NAME := colt_munch
PRODUCT_DEVICE := munch
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F4

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false

BUILD_FINGERPRINT := Redmi/munch/munch:13/RKQ1.211001.001/V14.0.1.0.TLMMIXM:user/release-keys
