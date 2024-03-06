#
# Copyright (C) 2024 The HorizonDroid Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/lenovo/zippo/device.mk)

# Inherit some common Horizon stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Horizon
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := true
TARGET_BOOT_ANIMATION_RES := 1080

# Maintainer
HORIZON_MAINTAINER := EinarG.
HORIZON_BUILD_TYPE := OFFICIAL
TARGET_BUILD_INNERTUNE := true
TARGET_BUILD_VIMUSIC := true

# Gapps
WITH_GMS := true

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Lenovo
PRODUCT_DEVICE := zippo
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_MODEL := Lenovo L78051
PRODUCT_NAME := aosp_zippo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="zippo_row-user 9 PKQ1.190110.001 11.0.405_191210 release-keys" \
    PRODUCT_NAME="zippo" \
    TARGET_DEVICE="zippo"

BUILD_FINGERPRINT := "Lenovo/zippo_row/zippo:9/PKQ1.190110.001/11.0.405_191210:user/release-keys"
