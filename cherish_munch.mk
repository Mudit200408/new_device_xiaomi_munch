#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

<<<<<<<< HEAD:cherish_munch.mk
# Inherit some common lineage stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)
========
# Inherit some common BananaDroid stuff
$(call inherit-product, vendor/banana/config/common.mk)
>>>>>>>> 04d5710 (Banana-ify):banana_munch.mk

# Inherit from munch device
$(call inherit-product, device/xiaomi/munch/device.mk)

<<<<<<<< HEAD:cherish_munch.mk
PRODUCT_NAME := cherish_munch
========
#Banandroid Stuff
BANANA_MAINTAINER := Mudit
TARGET_ENABLE_BLUR := true
TARGET_EXCLUDE_MATLOG := true
TARGET_BOOT_ANIMATION_RES := 720
TARGET_SUPPORTS_QUICK_TAP := true

#GAPPS
WITH_GAPPS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGER_SUPPORTS_NEXT_GEN_ASSISTANT := true

#CoreGapps
#BUILD_CORE_GAPPS := true
#BUILD_CORE_GAPPS_EXTRA := true
TARGET_USE_GOOGLE_TELEPHONY := true

PRODUCT_NAME := banana_munch
>>>>>>>> 04d5710 (Banana-ify):banana_munch.mk
PRODUCT_DEVICE := munch
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F4

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit some props from Cherish
CHERISH_BUILD_TYPE := OFFICIAL
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cherish.maintainer=HDzungx

# Inherit some common device props
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true

BUILD_FINGERPRINT := Redmi/munch/munch:13/RKQ1.211001.001/V14.0.2.0.TLMMIXM:user/release-keys
