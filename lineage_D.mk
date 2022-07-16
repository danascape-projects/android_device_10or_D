#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from D device
$(call inherit-product, device/10or/D/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Set shipping API level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n.mk)

# Device identifiers.
PRODUCT_NAME := lineage_D
PRODUCT_DEVICE := D
PRODUCT_MANUFACTURER := Longcheer
PRODUCT_BRAND := 10or
PRODUCT_MODEL := D

PRODUCT_GMS_CLIENTID_BASE := android-10or

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=10or_D \
    PRODUCT_NAME=10or_D

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="msm8937_64-user 8.1.0 OPM1.171019.019 255 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := 10or/10or_D/10or_D:8.1.0/OPM1.171019.019/10or_D_V2.0.T017_180625-1642:user/release-keys
