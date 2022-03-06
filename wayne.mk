#
# Copyright (C) 2018 The LineageOS Project
# Copyright (C) 2022 AospExtended ROM Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm660-common
$(call inherit-product, device/xiaomi/sdm660-common/sdm660.mk)

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-extended

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_intcodec.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_platform_info.xml

# Consumerir
BOARD_HAVE_IR := true

# Haters gonna hate..
PRODUCT_CHARACTERISTICS := nosdcard

# Init
PRODUCT_PACKAGES += \
    init.device.rc

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/wayne-common/wayne-common-vendor.mk)
