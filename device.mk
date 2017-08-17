#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := $(call my-dir)

# Boot Animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

# Ramdisk
PRODUCT_PACKAGES += \
	ueventd.pxa1088.rc \
	init.pxa1088.rc \
	init.pxa1088.usb.rc \
	init.pxa1088.tel.rc \
	init.wifi.rc \
	init.pxa1088.sensor.rc \
	init.pxa1088.security.rc \
	fstab.pxa1088

# Net
PRODUCT_PACKAGES += \
    libnetcmdiface

# Screen Density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := mdpi

# Dalvik VM
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)

# Get Proprietary libraries and binaries
$(call inherit-product, vendor/marvell/pxa1088/samsung/degaswifi/degaswifi-vendor.mk)
