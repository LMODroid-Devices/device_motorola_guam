#
# SPDX-FileCopyrightText: 2022-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/guam/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lmodroid/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lmodroid_guam
PRODUCT_DEVICE := guam
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto e7 plus
PRODUCT_MANUFACTURER := motorola
PRODUCT_GMS_CLIENTID_BASE := android-motorola

BUILD_FINGERPRINT := "motorola/guam_retail/guam:10/QPZS30.30-Q3-38-69-12/916393:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=guam_retail \
    PRIVATE_BUILD_DESC="guam_retail-user 10 QPZS30.30-Q3-38-69-12 916393 release-keys"
