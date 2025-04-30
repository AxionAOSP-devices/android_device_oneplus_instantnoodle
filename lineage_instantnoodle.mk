#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from instantnoodle device
$(call inherit-product, device/oneplus/instantnoodle/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_instantnoodle
PRODUCT_DEVICE := instantnoodle
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := IN2015

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OnePlus8-user 13 RKQ1.211119.001 Q.2058945_6c3fa-7d8c1b release-keys" \
    BuildFingerprint=OnePlus/OnePlus8/OnePlus8:13/RKQ1.211119.001/Q.2058945_6c3fa-7d8c1b:user/release-keys \
    DeviceName=OnePlus8 \
    DeviceProduct=OnePlus8 \
    SystemDevice=OnePlus8 \
    SystemName=OnePlus8

# Device Flags

# Maintainer name (use "_" for spaces, e.g., "rmp_22" → "rmp 22" in UI)
AXION_MAINTAINER := Itachi

# Processor name (use "_" for spaces)
AXION_PROCESSOR := Snapdragon_865

# Define rear camera specs (multiple sensors supported)
AXION_CAMERA_REAR_INFO := 48,16,2

# Define front camera specs
AXION_CAMERA_FRONT_INFO := 16

# Torch Control
TORCH_STR_SUPPORTED := true

# Los prebuilts
TARGET_INCLUDES_LOS_PREBUILTS := true

# Ax FX
TARGET_INCLUDE_AXFX := true

# BLur
TARGET_ENABLE_BLUR := true

# Charging
BYPASS_CHARGE_SUPPORTED ?= true

# Path for charge toggle
BYPASS_CHARGE_TOGGLE_PATH ?= /sys/class/oplus_chg/battery/mmi_charging_enable
