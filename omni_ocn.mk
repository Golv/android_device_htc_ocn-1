#
# Copyright 2017 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := ocn

# Inherit TWRP device configuration
$(call inherit-product-if-exists, device/htc/ocn/twrp_ocn.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=msm8998 \
    ro.hardware.gatekeeper=msm8998
## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_ocn
PRODUCT_BRAND := HTC
PRODUCT_DEVICE := ocn
PRODUCT_MODEL := HTC U11
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += \
#        PRODUCT_NAME=ocnuhl_00401 \
        PRIVATE_BUILD_DESC="ocnuhl_00401-user 9.0.0 PQ2A.190205.003/1088389.1 release-keys"

BUILD_FINGERPRINT := htc/ocnuhl_00401/htc_ocnuhl:9/PQ2A.190205.003/1088389.1:user/release-keys
